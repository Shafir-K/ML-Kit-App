
import 'dart:io';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';



class FaceDetectionDatasource {
  Future<List<Face>> detectFaces(XFile image) async {
    final options = FaceDetectorOptions();
    final faceDetector = FaceDetector(options: options);
    final inputImage = InputImage.fromFilePath(image.path);
    final faces = await faceDetector.processImage(inputImage);
    return faces;
  }
}


