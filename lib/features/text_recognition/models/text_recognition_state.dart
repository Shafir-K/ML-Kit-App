import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';

part 'text_recognition_state.freezed.dart';

@freezed
abstract class TextRecognitionState with _$TextRecognitionState {
  const factory TextRecognitionState({
    XFile? image,
    RecognizedText? recognizedText,
    @Default(false) bool isLoading,
  }) = _TextRecognitionState;
}
