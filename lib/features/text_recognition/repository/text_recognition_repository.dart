import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ml_kit_app/features/text_recognition/data_source/text_recognition_datasource.dart';

class TextRecognitionRepository {
  TextRecognitionRepository(this.datasource);
  final TextRecognitionDatasource datasource;

  Future<RecognizedText> recognizeText(XFile image) async {
    return datasource.recognizeText(image);
  }
}
