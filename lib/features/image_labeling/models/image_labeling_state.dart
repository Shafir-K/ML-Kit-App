import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_image_labeling/google_mlkit_image_labeling.dart';
import 'package:image_picker/image_picker.dart';

part 'image_labeling_state.freezed.dart';

@freezed
abstract class ImageLabelingState with _$ImageLabelingState {
  const factory ImageLabelingState({
    XFile? image,
    List<ImageLabel>? labels,
    @Default(false) bool isLoading,
  }) = _ImageLabelingState;
}
