import 'package:google_mlkit_image_labeling/google_mlkit_image_labeling.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ml_kit_app/features/image_labeling/data_source/image_labeling_datasource.dart';

class ImageLabelingRepository {
  ImageLabelingRepository(this.datasource);
  final ImageLabelingDatasource datasource;

  Future<List<ImageLabel>> getImageLabels(XFile image) async {
    return datasource.getImageLabels(image);
  }
}
