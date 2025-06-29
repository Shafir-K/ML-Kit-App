// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_recognition_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TextRecognitionState {

 XFile? get image; RecognizedText? get recognizedText; bool get isLoading;
/// Create a copy of TextRecognitionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextRecognitionStateCopyWith<TextRecognitionState> get copyWith => _$TextRecognitionStateCopyWithImpl<TextRecognitionState>(this as TextRecognitionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextRecognitionState&&(identical(other.image, image) || other.image == image)&&(identical(other.recognizedText, recognizedText) || other.recognizedText == recognizedText)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,image,recognizedText,isLoading);

@override
String toString() {
  return 'TextRecognitionState(image: $image, recognizedText: $recognizedText, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $TextRecognitionStateCopyWith<$Res>  {
  factory $TextRecognitionStateCopyWith(TextRecognitionState value, $Res Function(TextRecognitionState) _then) = _$TextRecognitionStateCopyWithImpl;
@useResult
$Res call({
 XFile? image, RecognizedText? recognizedText, bool isLoading
});




}
/// @nodoc
class _$TextRecognitionStateCopyWithImpl<$Res>
    implements $TextRecognitionStateCopyWith<$Res> {
  _$TextRecognitionStateCopyWithImpl(this._self, this._then);

  final TextRecognitionState _self;
  final $Res Function(TextRecognitionState) _then;

/// Create a copy of TextRecognitionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = freezed,Object? recognizedText = freezed,Object? isLoading = null,}) {
  return _then(_self.copyWith(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile?,recognizedText: freezed == recognizedText ? _self.recognizedText : recognizedText // ignore: cast_nullable_to_non_nullable
as RecognizedText?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _TextRecognitionState implements TextRecognitionState {
  const _TextRecognitionState({this.image, this.recognizedText, this.isLoading = false});
  

@override final  XFile? image;
@override final  RecognizedText? recognizedText;
@override@JsonKey() final  bool isLoading;

/// Create a copy of TextRecognitionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TextRecognitionStateCopyWith<_TextRecognitionState> get copyWith => __$TextRecognitionStateCopyWithImpl<_TextRecognitionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TextRecognitionState&&(identical(other.image, image) || other.image == image)&&(identical(other.recognizedText, recognizedText) || other.recognizedText == recognizedText)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,image,recognizedText,isLoading);

@override
String toString() {
  return 'TextRecognitionState(image: $image, recognizedText: $recognizedText, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$TextRecognitionStateCopyWith<$Res> implements $TextRecognitionStateCopyWith<$Res> {
  factory _$TextRecognitionStateCopyWith(_TextRecognitionState value, $Res Function(_TextRecognitionState) _then) = __$TextRecognitionStateCopyWithImpl;
@override @useResult
$Res call({
 XFile? image, RecognizedText? recognizedText, bool isLoading
});




}
/// @nodoc
class __$TextRecognitionStateCopyWithImpl<$Res>
    implements _$TextRecognitionStateCopyWith<$Res> {
  __$TextRecognitionStateCopyWithImpl(this._self, this._then);

  final _TextRecognitionState _self;
  final $Res Function(_TextRecognitionState) _then;

/// Create a copy of TextRecognitionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = freezed,Object? recognizedText = freezed,Object? isLoading = null,}) {
  return _then(_TextRecognitionState(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile?,recognizedText: freezed == recognizedText ? _self.recognizedText : recognizedText // ignore: cast_nullable_to_non_nullable
as RecognizedText?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
