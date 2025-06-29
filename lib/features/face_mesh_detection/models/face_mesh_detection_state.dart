import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';
import 'package:image_picker/image_picker.dart';

part 'face_mesh_detection_state.freezed.dart';

@freezed
abstract class FaceMeshDetectionState with _$FaceMeshDetectionState {
  const factory FaceMeshDetectionState({
    XFile? image,
    List<FaceMesh>? faceMeshes,
    @Default(false) bool isLoading,
  }) = _FaceMeshDetectionState;
}
