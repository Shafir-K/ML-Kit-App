import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ml_kit_app/features/object_detection/data_source/object_detection_datasource.dart';
import 'package:ml_kit_app/features/object_detection/repository/object_detection_repository.dart';

part 'object_detection_providers.g.dart';

@riverpod
ObjectDetectionDatasource objectDetectionDatasource(ObjectDetectionDatasourceRef ref) {
  return ObjectDetectionDatasource();
}

@riverpod
ObjectDetectionRepository objectDetectionRepository(
    ObjectDetectionRepositoryRef ref) {
  return ObjectDetectionRepository(ref.watch(objectDetectionDatasourceProvider));
}
