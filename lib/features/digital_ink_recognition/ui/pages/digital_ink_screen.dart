import 'package:flutter/material.dart';
import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ml_kit_app/features/digital_ink_recognition/providers/digital_ink_recognition_notifier.dart';

class DigitalInkScreen extends HookConsumerWidget {
  const DigitalInkScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(digitalInkRecognitionNotifierProvider);
    final notifier = ref.read(digitalInkRecognitionNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Digital Ink Recognition')),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onPanStart: (details) {
                notifier.addPoint(details.localPosition);
              },
              onPanUpdate: (details) {
                notifier.addPoint(details.localPosition);
              },
              onPanEnd: (details) {
                notifier.endStroke();
              },
              child: CustomPaint(
                painter: DigitalInkPainter(state.strokes),
                size: Size.infinite,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                if (state.isLoading)
                  const CircularProgressIndicator()
                else
                  Text(
                    'Recognized Text: ${state.recognizedText}',
                    style: const TextStyle(fontSize: 18),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: notifier.recognizeText,
                      child: const Text('Recognize'),
                    ),
                    ElevatedButton(
                      onPressed: notifier.clear,
                      child: const Text('Clear'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DigitalInkPainter extends CustomPainter {
  final List<Stroke> strokes;

  DigitalInkPainter(this.strokes);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 4.0;

    for (final stroke in strokes) {
      for (int i = 0; i < stroke.points.length - 1; i++) {
        final p1 = Offset(stroke.points[i].x.toDouble(), stroke.points[i].y.toDouble());
        final p2 = Offset(stroke.points[i + 1].x.toDouble(), stroke.points[i + 1].y.toDouble());
        canvas.drawLine(p1, p2, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant DigitalInkPainter oldDelegate) {
    return oldDelegate.strokes != strokes;
  }
}