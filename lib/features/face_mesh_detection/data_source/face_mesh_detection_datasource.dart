import 'dart:io';
import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class FaceMeshDetectionDatasource {
  Future<List<FaceMesh>> detectFaceMeshes(XFile image) async {
    final options = FaceMeshDetectorOptions.faceMesh;
    final faceMeshDetector = FaceMeshDetector(option: options);
    final inputImage = InputImage.fromFilePath(image.path);
    final faceMeshes = await faceMeshDetector.processImage(inputImage);
    return faceMeshes;
  }
}
