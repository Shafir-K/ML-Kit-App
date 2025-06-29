// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'face_mesh_detection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FaceMeshDetectionState {

 XFile? get image; List<FaceMesh>? get faceMeshes; bool get isLoading;
/// Create a copy of FaceMeshDetectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FaceMeshDetectionStateCopyWith<FaceMeshDetectionState> get copyWith => _$FaceMeshDetectionStateCopyWithImpl<FaceMeshDetectionState>(this as FaceMeshDetectionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaceMeshDetectionState&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.faceMeshes, faceMeshes)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,image,const DeepCollectionEquality().hash(faceMeshes),isLoading);

@override
String toString() {
  return 'FaceMeshDetectionState(image: $image, faceMeshes: $faceMeshes, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $FaceMeshDetectionStateCopyWith<$Res>  {
  factory $FaceMeshDetectionStateCopyWith(FaceMeshDetectionState value, $Res Function(FaceMeshDetectionState) _then) = _$FaceMeshDetectionStateCopyWithImpl;
@useResult
$Res call({
 XFile? image, List<FaceMesh>? faceMeshes, bool isLoading
});




}
/// @nodoc
class _$FaceMeshDetectionStateCopyWithImpl<$Res>
    implements $FaceMeshDetectionStateCopyWith<$Res> {
  _$FaceMeshDetectionStateCopyWithImpl(this._self, this._then);

  final FaceMeshDetectionState _self;
  final $Res Function(FaceMeshDetectionState) _then;

/// Create a copy of FaceMeshDetectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = freezed,Object? faceMeshes = freezed,Object? isLoading = null,}) {
  return _then(_self.copyWith(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile?,faceMeshes: freezed == faceMeshes ? _self.faceMeshes : faceMeshes // ignore: cast_nullable_to_non_nullable
as List<FaceMesh>?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _FaceMeshDetectionState implements FaceMeshDetectionState {
  const _FaceMeshDetectionState({this.image, final  List<FaceMesh>? faceMeshes, this.isLoading = false}): _faceMeshes = faceMeshes;
  

@override final  XFile? image;
 final  List<FaceMesh>? _faceMeshes;
@override List<FaceMesh>? get faceMeshes {
  final value = _faceMeshes;
  if (value == null) return null;
  if (_faceMeshes is EqualUnmodifiableListView) return _faceMeshes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  bool isLoading;

/// Create a copy of FaceMeshDetectionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FaceMeshDetectionStateCopyWith<_FaceMeshDetectionState> get copyWith => __$FaceMeshDetectionStateCopyWithImpl<_FaceMeshDetectionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FaceMeshDetectionState&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._faceMeshes, _faceMeshes)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,image,const DeepCollectionEquality().hash(_faceMeshes),isLoading);

@override
String toString() {
  return 'FaceMeshDetectionState(image: $image, faceMeshes: $faceMeshes, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$FaceMeshDetectionStateCopyWith<$Res> implements $FaceMeshDetectionStateCopyWith<$Res> {
  factory _$FaceMeshDetectionStateCopyWith(_FaceMeshDetectionState value, $Res Function(_FaceMeshDetectionState) _then) = __$FaceMeshDetectionStateCopyWithImpl;
@override @useResult
$Res call({
 XFile? image, List<FaceMesh>? faceMeshes, bool isLoading
});




}
/// @nodoc
class __$FaceMeshDetectionStateCopyWithImpl<$Res>
    implements _$FaceMeshDetectionStateCopyWith<$Res> {
  __$FaceMeshDetectionStateCopyWithImpl(this._self, this._then);

  final _FaceMeshDetectionState _self;
  final $Res Function(_FaceMeshDetectionState) _then;

/// Create a copy of FaceMeshDetectionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = freezed,Object? faceMeshes = freezed,Object? isLoading = null,}) {
  return _then(_FaceMeshDetectionState(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile?,faceMeshes: freezed == faceMeshes ? _self._faceMeshes : faceMeshes // ignore: cast_nullable_to_non_nullable
as List<FaceMesh>?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
