import 'package:google_mlkit_object_detection/google_mlkit_object_detection.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ml_kit_app/features/object_detection/data_source/object_detection_datasource.dart';

class ObjectDetectionRepository {
  ObjectDetectionRepository(this.datasource);
  final ObjectDetectionDatasource datasource;

  Future<List<DetectedObject>> detectObjects(XFile image) async {
    return datasource.detectObjects(image);
  }
}
