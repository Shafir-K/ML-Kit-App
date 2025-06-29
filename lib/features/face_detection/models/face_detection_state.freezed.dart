// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'face_detection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FaceDetectionState {

 XFile? get image; List<Face>? get faces; bool get isLoading;
/// Create a copy of FaceDetectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FaceDetectionStateCopyWith<FaceDetectionState> get copyWith => _$FaceDetectionStateCopyWithImpl<FaceDetectionState>(this as FaceDetectionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaceDetectionState&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.faces, faces)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,image,const DeepCollectionEquality().hash(faces),isLoading);

@override
String toString() {
  return 'FaceDetectionState(image: $image, faces: $faces, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $FaceDetectionStateCopyWith<$Res>  {
  factory $FaceDetectionStateCopyWith(FaceDetectionState value, $Res Function(FaceDetectionState) _then) = _$FaceDetectionStateCopyWithImpl;
@useResult
$Res call({
 XFile? image, List<Face>? faces, bool isLoading
});




}
/// @nodoc
class _$FaceDetectionStateCopyWithImpl<$Res>
    implements $FaceDetectionStateCopyWith<$Res> {
  _$FaceDetectionStateCopyWithImpl(this._self, this._then);

  final FaceDetectionState _self;
  final $Res Function(FaceDetectionState) _then;

/// Create a copy of FaceDetectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = freezed,Object? faces = freezed,Object? isLoading = null,}) {
  return _then(_self.copyWith(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile?,faces: freezed == faces ? _self.faces : faces // ignore: cast_nullable_to_non_nullable
as List<Face>?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _FaceDetectionState implements FaceDetectionState {
  const _FaceDetectionState({this.image, final  List<Face>? faces, this.isLoading = false}): _faces = faces;
  

@override final  XFile? image;
 final  List<Face>? _faces;
@override List<Face>? get faces {
  final value = _faces;
  if (value == null) return null;
  if (_faces is EqualUnmodifiableListView) return _faces;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  bool isLoading;

/// Create a copy of FaceDetectionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FaceDetectionStateCopyWith<_FaceDetectionState> get copyWith => __$FaceDetectionStateCopyWithImpl<_FaceDetectionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FaceDetectionState&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._faces, _faces)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,image,const DeepCollectionEquality().hash(_faces),isLoading);

@override
String toString() {
  return 'FaceDetectionState(image: $image, faces: $faces, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$FaceDetectionStateCopyWith<$Res> implements $FaceDetectionStateCopyWith<$Res> {
  factory _$FaceDetectionStateCopyWith(_FaceDetectionState value, $Res Function(_FaceDetectionState) _then) = __$FaceDetectionStateCopyWithImpl;
@override @useResult
$Res call({
 XFile? image, List<Face>? faces, bool isLoading
});




}
/// @nodoc
class __$FaceDetectionStateCopyWithImpl<$Res>
    implements _$FaceDetectionStateCopyWith<$Res> {
  __$FaceDetectionStateCopyWithImpl(this._self, this._then);

  final _FaceDetectionState _self;
  final $Res Function(_FaceDetectionState) _then;

/// Create a copy of FaceDetectionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = freezed,Object? faces = freezed,Object? isLoading = null,}) {
  return _then(_FaceDetectionState(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile?,faces: freezed == faces ? _self._faces : faces // ignore: cast_nullable_to_non_nullable
as List<Face>?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
