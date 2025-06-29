import 'dart:io';
import 'package:google_mlkit_image_labeling/google_mlkit_image_labeling.dart';
import 'package:image_picker/image_picker.dart';

class ImageLabelingDatasource {
  Future<List<ImageLabel>> getImageLabels(XFile image) async {
    final imageLabeler = ImageLabeler(options: ImageLabelerOptions());
    final inputImage = InputImage.fromFilePath(image.path);
    final labels = await imageLabeler.processImage(inputImage);
    return labels;
  }
}
