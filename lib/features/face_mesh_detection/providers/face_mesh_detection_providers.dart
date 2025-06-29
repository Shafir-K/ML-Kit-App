import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ml_kit_app/features/face_mesh_detection/data_source/face_mesh_detection_datasource.dart';
import 'package:ml_kit_app/features/face_mesh_detection/repository/face_mesh_detection_repository.dart';

part 'face_mesh_detection_providers.g.dart';

@riverpod
FaceMeshDetectionDatasource faceMeshDetectionDatasource(FaceMeshDetectionDatasourceRef ref) {
  return FaceMeshDetectionDatasource();
}

@riverpod
FaceMeshDetectionRepository faceMeshDetectionRepository(
    FaceMeshDetectionRepositoryRef ref) {
  return FaceMeshDetectionRepository(ref.watch(faceMeshDetectionDatasourceProvider));
}
