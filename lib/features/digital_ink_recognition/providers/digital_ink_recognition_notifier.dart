import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';
import 'package:flutter/material.dart';
import 'package:ml_kit_app/features/digital_ink_recognition/models/digital_ink_recognition_state.dart';
import 'package:ml_kit_app/features/digital_ink_recognition/providers/digital_ink_recognition_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'digital_ink_recognition_notifier.g.dart';

@riverpod
class DigitalInkRecognitionNotifier extends _$DigitalInkRecognitionNotifier {
  @override
  DigitalInkRecognitionState build() {
    ref.onDispose(() {
      ref.read(digitalInkRecognitionRepositoryProvider).close();
    });
    return const DigitalInkRecognitionState();
  }

  void addPoint(Offset point) {
    final currentStrokes = List<Stroke>.from(state.strokes);
    if (currentStrokes.isEmpty || currentStrokes.last.points.isEmpty) {
      currentStrokes.add(Stroke(points: []));
    }
    currentStrokes.last.points.add(StrokePoint(x: point.dx, y: point.dy, t: DateTime.now().millisecondsSinceEpoch));
    state = state.copyWith(strokes: currentStrokes);
  }

  void endStroke() {
    final currentStrokes = List<Stroke>.from(state.strokes);
    if (currentStrokes.isNotEmpty && currentStrokes.last.points.isNotEmpty) {
      currentStrokes.add(Stroke(points: []));
    }
    state = state.copyWith(strokes: currentStrokes);
  }

  Future<void> recognizeText() async {
    if (state.strokes.isEmpty) return;
    state = state.copyWith(isLoading: true);
    final repository = ref.read(digitalInkRecognitionRepositoryProvider);
    final recognizedText = await repository.recognize(state.strokes);
    state = state.copyWith(recognizedText: recognizedText, isLoading: false);
  }

  void clear() {
    state = const DigitalInkRecognitionState();
  }
}
