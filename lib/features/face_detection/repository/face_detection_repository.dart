import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ml_kit_app/features/face_detection/data_source/face_detection_datasource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';



class FaceDetectionRepository {
  FaceDetectionRepository(this.datasource);
  final FaceDetectionDatasource datasource;

  Future<List<Face>> detectFaces(XFile image) async {
    return datasource.detectFaces(image);
  }
}


