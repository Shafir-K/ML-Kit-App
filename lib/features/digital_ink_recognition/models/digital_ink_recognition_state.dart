import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';

part 'digital_ink_recognition_state.freezed.dart';

@freezed
abstract class DigitalInkRecognitionState with _$DigitalInkRecognitionState {
  const factory DigitalInkRecognitionState({
    @Default([]) List<Stroke> strokes,
    @Default('') String recognizedText,
    @Default(false) bool isLoading,
  }) = _DigitalInkRecognitionState;
}
