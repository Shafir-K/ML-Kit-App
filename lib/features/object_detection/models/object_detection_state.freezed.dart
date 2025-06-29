// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'object_detection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ObjectDetectionState {

 XFile? get image; List<DetectedObject>? get objects; bool get isLoading;
/// Create a copy of ObjectDetectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ObjectDetectionStateCopyWith<ObjectDetectionState> get copyWith => _$ObjectDetectionStateCopyWithImpl<ObjectDetectionState>(this as ObjectDetectionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ObjectDetectionState&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.objects, objects)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,image,const DeepCollectionEquality().hash(objects),isLoading);

@override
String toString() {
  return 'ObjectDetectionState(image: $image, objects: $objects, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $ObjectDetectionStateCopyWith<$Res>  {
  factory $ObjectDetectionStateCopyWith(ObjectDetectionState value, $Res Function(ObjectDetectionState) _then) = _$ObjectDetectionStateCopyWithImpl;
@useResult
$Res call({
 XFile? image, List<DetectedObject>? objects, bool isLoading
});




}
/// @nodoc
class _$ObjectDetectionStateCopyWithImpl<$Res>
    implements $ObjectDetectionStateCopyWith<$Res> {
  _$ObjectDetectionStateCopyWithImpl(this._self, this._then);

  final ObjectDetectionState _self;
  final $Res Function(ObjectDetectionState) _then;

/// Create a copy of ObjectDetectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = freezed,Object? objects = freezed,Object? isLoading = null,}) {
  return _then(_self.copyWith(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile?,objects: freezed == objects ? _self.objects : objects // ignore: cast_nullable_to_non_nullable
as List<DetectedObject>?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _ObjectDetectionState implements ObjectDetectionState {
  const _ObjectDetectionState({this.image, final  List<DetectedObject>? objects, this.isLoading = false}): _objects = objects;
  

@override final  XFile? image;
 final  List<DetectedObject>? _objects;
@override List<DetectedObject>? get objects {
  final value = _objects;
  if (value == null) return null;
  if (_objects is EqualUnmodifiableListView) return _objects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  bool isLoading;

/// Create a copy of ObjectDetectionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ObjectDetectionStateCopyWith<_ObjectDetectionState> get copyWith => __$ObjectDetectionStateCopyWithImpl<_ObjectDetectionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ObjectDetectionState&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._objects, _objects)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,image,const DeepCollectionEquality().hash(_objects),isLoading);

@override
String toString() {
  return 'ObjectDetectionState(image: $image, objects: $objects, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$ObjectDetectionStateCopyWith<$Res> implements $ObjectDetectionStateCopyWith<$Res> {
  factory _$ObjectDetectionStateCopyWith(_ObjectDetectionState value, $Res Function(_ObjectDetectionState) _then) = __$ObjectDetectionStateCopyWithImpl;
@override @useResult
$Res call({
 XFile? image, List<DetectedObject>? objects, bool isLoading
});




}
/// @nodoc
class __$ObjectDetectionStateCopyWithImpl<$Res>
    implements _$ObjectDetectionStateCopyWith<$Res> {
  __$ObjectDetectionStateCopyWithImpl(this._self, this._then);

  final _ObjectDetectionState _self;
  final $Res Function(_ObjectDetectionState) _then;

/// Create a copy of ObjectDetectionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = freezed,Object? objects = freezed,Object? isLoading = null,}) {
  return _then(_ObjectDetectionState(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile?,objects: freezed == objects ? _self._objects : objects // ignore: cast_nullable_to_non_nullable
as List<DetectedObject>?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
