import 'package:image_picker/image_picker.dart';
import 'package:ml_kit_app/features/text_recognition/models/text_recognition_state.dart';
import 'package:ml_kit_app/features/text_recognition/providers/text_recognition_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'text_recognition_notifier.g.dart';

@riverpod
class TextRecognitionNotifier extends _$TextRecognitionNotifier {
  @override
  TextRecognitionState build() => const TextRecognitionState();

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      state = state.copyWith(image: image, recognizedText: null);
      _recognizeText();
    }
  }

  Future<void> _recognizeText() async {
    if (state.image == null) return;
    state = state.copyWith(isLoading: true);
    final repository = ref.read(textRecognitionRepositoryProvider);
    final recognizedText = await repository.recognizeText(state.image!);
    state = state.copyWith(recognizedText: recognizedText, isLoading: false);
  }
}
