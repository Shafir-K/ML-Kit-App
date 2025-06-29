import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ml_kit_app/features/text_recognition/data_source/text_recognition_datasource.dart';
import 'package:ml_kit_app/features/text_recognition/repository/text_recognition_repository.dart';

part 'text_recognition_providers.g.dart';

@riverpod
TextRecognitionDatasource textRecognitionDatasource(TextRecognitionDatasourceRef ref) {
  return TextRecognitionDatasource();
}

@riverpod
TextRecognitionRepository textRecognitionRepository(
    TextRecognitionRepositoryRef ref) {
  return TextRecognitionRepository(ref.watch(textRecognitionDatasourceProvider));
}
