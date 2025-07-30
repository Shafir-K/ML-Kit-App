import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ml_kit_app/features/digital_ink_recognition/data_source/digital_ink_recognition_datasource.dart';
import 'package:ml_kit_app/features/digital_ink_recognition/repository/digital_ink_recognition_repository.dart';

part 'digital_ink_recognition_providers.g.dart';

@riverpod
DigitalInkRecognitionDatasource digitalInkRecognitionDatasource(DigitalInkRecognitionDatasourceRef ref) {
  return DigitalInkRecognitionDatasource();
}

@riverpod
DigitalInkRecognitionRepository digitalInkRecognitionRepository(
    DigitalInkRecognitionRepositoryRef ref) {
  return DigitalInkRecognitionRepository(ref.watch(digitalInkRecognitionDatasourceProvider));
}
