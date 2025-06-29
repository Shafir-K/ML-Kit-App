import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ml_kit_app/features/face_mesh_detection/data_source/face_mesh_detection_datasource.dart';

class FaceMeshDetectionRepository {
  FaceMeshDetectionRepository(this.datasource);
  final FaceMeshDetectionDatasource datasource;

  Future<List<FaceMesh>> detectFaceMeshes(XFile image) async {
    return datasource.detectFaceMeshes(image);
  }
}
