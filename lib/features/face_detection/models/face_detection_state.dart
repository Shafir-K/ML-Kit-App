import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import 'package:image_picker/image_picker.dart';

part 'face_detection_state.freezed.dart';

@freezed
abstract class FaceDetectionState with _$FaceDetectionState {
  const factory FaceDetectionState({
    XFile? image,
    List<Face>? faces,
    @Default(false) bool isLoading,
  }) = _FaceDetectionState;
}
