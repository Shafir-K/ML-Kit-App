// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_labeling_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImageLabelingState {

 XFile? get image; List<ImageLabel>? get labels; bool get isLoading;
/// Create a copy of ImageLabelingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageLabelingStateCopyWith<ImageLabelingState> get copyWith => _$ImageLabelingStateCopyWithImpl<ImageLabelingState>(this as ImageLabelingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageLabelingState&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.labels, labels)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,image,const DeepCollectionEquality().hash(labels),isLoading);

@override
String toString() {
  return 'ImageLabelingState(image: $image, labels: $labels, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $ImageLabelingStateCopyWith<$Res>  {
  factory $ImageLabelingStateCopyWith(ImageLabelingState value, $Res Function(ImageLabelingState) _then) = _$ImageLabelingStateCopyWithImpl;
@useResult
$Res call({
 XFile? image, List<ImageLabel>? labels, bool isLoading
});




}
/// @nodoc
class _$ImageLabelingStateCopyWithImpl<$Res>
    implements $ImageLabelingStateCopyWith<$Res> {
  _$ImageLabelingStateCopyWithImpl(this._self, this._then);

  final ImageLabelingState _self;
  final $Res Function(ImageLabelingState) _then;

/// Create a copy of ImageLabelingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = freezed,Object? labels = freezed,Object? isLoading = null,}) {
  return _then(_self.copyWith(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile?,labels: freezed == labels ? _self.labels : labels // ignore: cast_nullable_to_non_nullable
as List<ImageLabel>?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _ImageLabelingState implements ImageLabelingState {
  const _ImageLabelingState({this.image, final  List<ImageLabel>? labels, this.isLoading = false}): _labels = labels;
  

@override final  XFile? image;
 final  List<ImageLabel>? _labels;
@override List<ImageLabel>? get labels {
  final value = _labels;
  if (value == null) return null;
  if (_labels is EqualUnmodifiableListView) return _labels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  bool isLoading;

/// Create a copy of ImageLabelingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageLabelingStateCopyWith<_ImageLabelingState> get copyWith => __$ImageLabelingStateCopyWithImpl<_ImageLabelingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageLabelingState&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._labels, _labels)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,image,const DeepCollectionEquality().hash(_labels),isLoading);

@override
String toString() {
  return 'ImageLabelingState(image: $image, labels: $labels, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$ImageLabelingStateCopyWith<$Res> implements $ImageLabelingStateCopyWith<$Res> {
  factory _$ImageLabelingStateCopyWith(_ImageLabelingState value, $Res Function(_ImageLabelingState) _then) = __$ImageLabelingStateCopyWithImpl;
@override @useResult
$Res call({
 XFile? image, List<ImageLabel>? labels, bool isLoading
});




}
/// @nodoc
class __$ImageLabelingStateCopyWithImpl<$Res>
    implements _$ImageLabelingStateCopyWith<$Res> {
  __$ImageLabelingStateCopyWithImpl(this._self, this._then);

  final _ImageLabelingState _self;
  final $Res Function(_ImageLabelingState) _then;

/// Create a copy of ImageLabelingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = freezed,Object? labels = freezed,Object? isLoading = null,}) {
  return _then(_ImageLabelingState(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile?,labels: freezed == labels ? _self._labels : labels // ignore: cast_nullable_to_non_nullable
as List<ImageLabel>?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
