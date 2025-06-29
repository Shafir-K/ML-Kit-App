import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:google_mlkit_object_detection/google_mlkit_object_detection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ml_kit_app/features/object_detection/providers/object_detection_notifier.dart';
import 'package:ml_kit_app/main.dart';

class ObjectDetectionScreen extends HookConsumerWidget {
  const ObjectDetectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(objectDetectionNotifierProvider);
    final notifier = ref.read(objectDetectionNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Object Detection')),
      body: Stack(
        fit: StackFit.expand,
        children: [
          if (state.image != null)
            Image.file(File(state.image!.path), fit: BoxFit.contain),
          if (state.isLoading)
            const Center(child: CircularProgressIndicator())
          else if (state.objects != null && state.image != null)
            FutureBuilder<ui.Image>(
              future: _loadImage(File(state.image!.path)),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return CustomPaint(
                    painter: ObjectPainter(snapshot.data!, state.objects!),
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

class ObjectPainter extends CustomPainter {
  final ui.Image image;
  final List<DetectedObject> objects;

  ObjectPainter(this.image, this.objects);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..color = Colors.red;

    final textStyle = const TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );

    final scaleX = size.width / image.width;
    final scaleY = size.height / image.height;

    for (final object in objects) {
      final rect = Rect.fromLTRB(
        object.boundingBox.left * scaleX,
        object.boundingBox.top * scaleY,
        object.boundingBox.right * scaleX,
        object.boundingBox.bottom * scaleY,
      );
      canvas.drawRect(rect, paint);

      for (final label in object.labels) {
        final textSpan = TextSpan(text: label.text, style: textStyle);
        final textPainter = TextPainter(
          text: textSpan,
          textDirection: TextDirection.ltr,
        );
        textPainter.layout();
        textPainter.paint(
          canvas,
          Offset(rect.left, rect.top - textPainter.height - 5),
        );
      }
    }
  }

  @override
  bool shouldRepaint(ObjectPainter oldDelegate) {
    return oldDelegate.image != image || oldDelegate.objects != objects;
  }
}
