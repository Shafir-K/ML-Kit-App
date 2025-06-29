import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ml_kit_app/features/face_detection/data_source/face_detection_datasource.dart';
import 'package:ml_kit_app/features/face_detection/repository/face_detection_repository.dart';

part 'face_detection_providers.g.dart';

@riverpod
FaceDetectionDatasource faceDetectionDatasource(Ref ref) {
  return FaceDetectionDatasource();
}

@riverpod
FaceDetectionRepository faceDetectionRepository(Ref ref) {
  return FaceDetectionRepository(ref.read(faceDetectionDatasourceProvider));
}
