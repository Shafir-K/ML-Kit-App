import 'dart:io';
import 'package:google_mlkit_object_detection/google_mlkit_object_detection.dart';
import 'package:image_picker/image_picker.dart';

class ObjectDetectionDatasource {
  Future<List<DetectedObject>> detectObjects(XFile image) async {
    final options = ObjectDetectorOptions(mode: DetectionMode.single, classifyObjects: true, multipleObjects: true);
    final objectDetector = ObjectDetector(options: options);
    final inputImage = InputImage.fromFilePath(image.path);
    final objects = await objectDetector.processImage(inputImage);
    return objects;
  }
}
