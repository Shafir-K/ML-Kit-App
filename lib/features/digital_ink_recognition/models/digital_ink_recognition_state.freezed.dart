// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'digital_ink_recognition_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DigitalInkRecognitionState {

 List<Stroke> get strokes; String get recognizedText; bool get isLoading;
/// Create a copy of DigitalInkRecognitionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DigitalInkRecognitionStateCopyWith<DigitalInkRecognitionState> get copyWith => _$DigitalInkRecognitionStateCopyWithImpl<DigitalInkRecognitionState>(this as DigitalInkRecognitionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DigitalInkRecognitionState&&const DeepCollectionEquality().equals(other.strokes, strokes)&&(identical(other.recognizedText, recognizedText) || other.recognizedText == recognizedText)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(strokes),recognizedText,isLoading);

@override
String toString() {
  return 'DigitalInkRecognitionState(strokes: $strokes, recognizedText: $recognizedText, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $DigitalInkRecognitionStateCopyWith<$Res>  {
  factory $DigitalInkRecognitionStateCopyWith(DigitalInkRecognitionState value, $Res Function(DigitalInkRecognitionState) _then) = _$DigitalInkRecognitionStateCopyWithImpl;
@useResult
$Res call({
 List<Stroke> strokes, String recognizedText, bool isLoading
});




}
/// @nodoc
class _$DigitalInkRecognitionStateCopyWithImpl<$Res>
    implements $DigitalInkRecognitionStateCopyWith<$Res> {
  _$DigitalInkRecognitionStateCopyWithImpl(this._self, this._then);

  final DigitalInkRecognitionState _self;
  final $Res Function(DigitalInkRecognitionState) _then;

/// Create a copy of DigitalInkRecognitionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? strokes = null,Object? recognizedText = null,Object? isLoading = null,}) {
  return _then(_self.copyWith(
strokes: null == strokes ? _self.strokes : strokes // ignore: cast_nullable_to_non_nullable
as List<Stroke>,recognizedText: null == recognizedText ? _self.recognizedText : recognizedText // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _DigitalInkRecognitionState implements DigitalInkRecognitionState {
  const _DigitalInkRecognitionState({final  List<Stroke> strokes = const [], this.recognizedText = '', this.isLoading = false}): _strokes = strokes;
  

 final  List<Stroke> _strokes;
@override@JsonKey() List<Stroke> get strokes {
  if (_strokes is EqualUnmodifiableListView) return _strokes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_strokes);
}

@override@JsonKey() final  String recognizedText;
@override@JsonKey() final  bool isLoading;

/// Create a copy of DigitalInkRecognitionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DigitalInkRecognitionStateCopyWith<_DigitalInkRecognitionState> get copyWith => __$DigitalInkRecognitionStateCopyWithImpl<_DigitalInkRecognitionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DigitalInkRecognitionState&&const DeepCollectionEquality().equals(other._strokes, _strokes)&&(identical(other.recognizedText, recognizedText) || other.recognizedText == recognizedText)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_strokes),recognizedText,isLoading);

@override
String toString() {
  return 'DigitalInkRecognitionState(strokes: $strokes, recognizedText: $recognizedText, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$DigitalInkRecognitionStateCopyWith<$Res> implements $DigitalInkRecognitionStateCopyWith<$Res> {
  factory _$DigitalInkRecognitionStateCopyWith(_DigitalInkRecognitionState value, $Res Function(_DigitalInkRecognitionState) _then) = __$DigitalInkRecognitionStateCopyWithImpl;
@override @useResult
$Res call({
 List<Stroke> strokes, String recognizedText, bool isLoading
});




}
/// @nodoc
class __$DigitalInkRecognitionStateCopyWithImpl<$Res>
    implements _$DigitalInkRecognitionStateCopyWith<$Res> {
  __$DigitalInkRecognitionStateCopyWithImpl(this._self, this._then);

  final _DigitalInkRecognitionState _self;
  final $Res Function(_DigitalInkRecognitionState) _then;

/// Create a copy of DigitalInkRecognitionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? strokes = null,Object? recognizedText = null,Object? isLoading = null,}) {
  return _then(_DigitalInkRecognitionState(
strokes: null == strokes ? _self._strokes : strokes // ignore: cast_nullable_to_non_nullable
as List<Stroke>,recognizedText: null == recognizedText ? _self.recognizedText : recognizedText // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
