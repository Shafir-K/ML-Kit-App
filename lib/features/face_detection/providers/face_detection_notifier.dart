import 'package:image_picker/image_picker.dart';
import 'package:ml_kit_app/features/face_detection/models/face_detection_state.dart';
import 'package:ml_kit_app/features/face_detection/providers/face_detection_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'face_detection_notifier.g.dart';

@riverpod
class FaceDetectionNotifier extends _$FaceDetectionNotifier {
  @override
  FaceDetectionState build() => const FaceDetectionState();

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      state = state.copyWith(image: image, faces: null);
      _detectFaces();
    }
  }

  Future<void> _detectFaces() async {
    if (state.image == null) return;
    state = state.copyWith(isLoading: true);
    final repository = ref.read(faceDetectionRepositoryProvider);
    final faces = await repository.detectFaces(state.image!);
    state = state.copyWith(faces: faces, isLoading: false);
  }
}
