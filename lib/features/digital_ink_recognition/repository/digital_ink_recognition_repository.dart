import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';
import 'package:ml_kit_app/features/digital_ink_recognition/data_source/digital_ink_recognition_datasource.dart';

class DigitalInkRecognitionRepository {
  DigitalInkRecognitionRepository(this.datasource);
  final DigitalInkRecognitionDatasource datasource;

  Future<String> recognize(List<Stroke> strokes) async {
    return datasource.recognize(strokes);
  }

  void close() {
    datasource.close();
  }
}
