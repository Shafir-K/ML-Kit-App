import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';

class DigitalInkRecognitionDatasource {
  final DigitalInkRecognizer _recognizer = DigitalInkRecognizer(languageCode: 'en');

  Future<String> recognize(List<Stroke> strokes) async {
    final ink = Ink(strokes: strokes);
    final recognizedResult = await _recognizer.recognize(ink);
    return recognizedResult.candidates.first.text;
  }

  void close() {
    _recognizer.close();
  }
}