import 'package:image_picker/image_picker.dart';
import 'package:ml_kit_app/features/image_labeling/models/image_labeling_state.dart';
import 'package:ml_kit_app/features/image_labeling/providers/image_labeling_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_labeling_notifier.g.dart';

@riverpod
class ImageLabelingNotifier extends _$ImageLabelingNotifier {
  @override
  ImageLabelingState build() => const ImageLabelingState();

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      state = state.copyWith(image: image, labels: null);
      _getImageLabels();
    }
  }

  Future<void> _getImageLabels() async {
    if (state.image == null) return;
    state = state.copyWith(isLoading: true);
    final repository = ref.read(imageLabelingRepositoryProvider);
    final labels = await repository.getImageLabels(state.image!);
    state = state.copyWith(labels: labels, isLoading: false);
  }
}
