import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ml_kit_app/features/image_labeling/data_source/image_labeling_datasource.dart';
import 'package:ml_kit_app/features/image_labeling/repository/image_labeling_repository.dart';

part 'image_labeling_providers.g.dart';

@riverpod
ImageLabelingDatasource imageLabelingDatasource(ImageLabelingDatasourceRef ref) {
  return ImageLabelingDatasource();
}

@riverpod
ImageLabelingRepository imageLabelingRepository(
    ImageLabelingRepositoryRef ref) {
  return ImageLabelingRepository(ref.watch(imageLabelingDatasourceProvider));
}
