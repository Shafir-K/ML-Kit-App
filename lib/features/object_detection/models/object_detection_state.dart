import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_object_detection/google_mlkit_object_detection.dart';
import 'package:image_picker/image_picker.dart';

part 'object_detection_state.freezed.dart';

@freezed
abstract class ObjectDetectionState with _$ObjectDetectionState {
  const factory ObjectDetectionState({
    XFile? image,
    List<DetectedObject>? objects,
    @Default(false) bool isLoading,
  }) = _ObjectDetectionState;
}
