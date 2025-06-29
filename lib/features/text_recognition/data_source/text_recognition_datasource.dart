import 'dart:io';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';

class TextRecognitionDatasource {
  Future<RecognizedText> recognizeText(XFile image) async {
    final textRecognizer = TextRecognizer();
    final inputImage = InputImage.fromFilePath(image.path);
    final recognizedText = await textRecognizer.processImage(inputImage);
    return recognizedText;
  }
}
