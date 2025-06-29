import 'package:image_picker/image_picker.dart';
import 'package:ml_kit_app/features/face_mesh_detection/models/face_mesh_detection_state.dart';
import 'package:ml_kit_app/features/face_mesh_detection/providers/face_mesh_detection_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'face_mesh_detection_notifier.g.dart';

@riverpod
class FaceMeshDetectionNotifier extends _$FaceMeshDetectionNotifier {
  @override
  FaceMeshDetectionState build() => const FaceMeshDetectionState();

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      state = state.copyWith(image: image, faceMeshes: null);
      _detectFaceMeshes();
    }
  }

  Future<void> _detectFaceMeshes() async {
    if (state.image == null) return;
    state = state.copyWith(isLoading: true);
    final repository = ref.read(faceMeshDetectionRepositoryProvider);
    final faceMeshes = await repository.detectFaceMeshes(state.image!);
    state = state.copyWith(faceMeshes: faceMeshes, isLoading: false);
  }
}
