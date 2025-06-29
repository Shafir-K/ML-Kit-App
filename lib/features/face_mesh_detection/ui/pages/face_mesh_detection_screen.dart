import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ml_kit_app/features/face_mesh_detection/providers/face_mesh_detection_notifier.dart';

class FaceMeshDetectionScreen extends HookConsumerWidget {
  const FaceMeshDetectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(faceMeshDetectionNotifierProvider);
    final notifier = ref.read(faceMeshDetectionNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Face Mesh Detection')),
      body: Stack(
        fit: StackFit.expand,
        children: [
          if (state.image != null)
            Image.file(
              File(state.image!.path),
              fit: BoxFit.contain,
            ),
          if (state.isLoading)
            const Center(child: CircularProgressIndicator())
          else if (state.faceMeshes != null && state.image != null)
            FutureBuilder<ui.Image>(
              future: _loadImage(File(state.image!.path)),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return CustomPaint(
                    painter: FaceMeshPainter(snapshot.data!, state.faceMeshes!),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: notifier.pickImage,
              child: const Icon(Icons.add_a_photo),
            ),
          ),
        ],
      ),
    );
  }

  Future<ui.Image> _loadImage(File file) async {
    final data = await file.readAsBytes();
    return await decodeImageFromList(data);
  }
}

class FaceMeshPainter extends CustomPainter {
  final ui.Image image;
  final List<FaceMesh> faceMeshes;

  FaceMeshPainter(this.image, this.faceMeshes);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..color = Colors.red;

    final scaleX = size.width / image.width;
    final scaleY = size.height / image.height;

    for (final faceMesh in faceMeshes) {
      for (final point in faceMesh.points) {
        canvas.drawCircle(
          Offset(point.x.toDouble() * scaleX, point.y.toDouble() * scaleY),
          1.0,
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(FaceMeshPainter oldDelegate) {
    return oldDelegate.image != image || oldDelegate.faceMeshes != faceMeshes;
  }
}