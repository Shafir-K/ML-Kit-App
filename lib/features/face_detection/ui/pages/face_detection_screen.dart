import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ml_kit_app/features/face_detection/providers/face_detection_notifier.dart';

class FaceDetectionScreen extends HookConsumerWidget {
  const FaceDetectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(faceDetectionNotifierProvider);
    final notifier = ref.read(faceDetectionNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Face Detection')),
      body: Stack(
        fit: StackFit.expand,
        children: [
          if (state.image != null) Image.file(File(state.image!.path)),
          if (state.isLoading)
            const Center(child: CircularProgressIndicator())
          else if (state.faces != null && state.image != null)
            FutureBuilder<ui.Image>(
              future: _loadImage(File(state.image!.path)),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return CustomPaint(
                    painter: FacePainter(snapshot.data!, state.faces!),
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

class FacePainter extends CustomPainter {
  final ui.Image image;
  final List<Face> faces;

  FacePainter(this.image, this.faces);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0
      ..color = Colors.red;

    final scaleX = size.width / image.width;
    final scaleY = size.height / image.height;

    for (final face in faces) {
      final rect = Rect.fromLTRB(
        face.boundingBox.left * scaleX,
        face.boundingBox.top * scaleY,
        face.boundingBox.right * scaleX,
        face.boundingBox.bottom * scaleY,
      );
      canvas.drawRect(rect, paint);
    }
  }

  @override
  bool shouldRepaint(FacePainter oldDelegate) {
    return oldDelegate.image != image || oldDelegate.faces != faces;
  }
}
