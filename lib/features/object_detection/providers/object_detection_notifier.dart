import 'package:image_picker/image_picker.dart';
import 'package:ml_kit_app/features/object_detection/models/object_detection_state.dart';
import 'package:ml_kit_app/features/object_detection/providers/object_detection_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'object_detection_notifier.g.dart';

@riverpod
class ObjectDetectionNotifier extends _$ObjectDetectionNotifier {
  @override
  ObjectDetectionState build() => const ObjectDetectionState();

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      state = state.copyWith(image: image, objects: null);
      _detectObjects();
    }
  }

  Future<void> _detectObjects() async {
    if (state.image == null) return;
    state = state.copyWith(isLoading: true);
    final repository = ref.read(objectDetectionRepositoryProvider);
    final objects = await repository.detectObjects(state.image!);
    state = state.copyWith(objects: objects, isLoading: false);
  }
}
