// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'barcode_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BarcodeResultModel {

 String get value; BarcodeType get type;
/// Create a copy of BarcodeResultModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BarcodeResultModelCopyWith<BarcodeResultModel> get copyWith => _$BarcodeResultModelCopyWithImpl<BarcodeResultModel>(this as BarcodeResultModel, _$identity);

  /// Serializes this BarcodeResultModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BarcodeResultModel&&(identical(other.value, value) || other.value == value)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,type);

@override
String toString() {
  return 'BarcodeResultModel(value: $value, type: $type)';
}


}

/// @nodoc
abstract mixin class $BarcodeResultModelCopyWith<$Res>  {
  factory $BarcodeResultModelCopyWith(BarcodeResultModel value, $Res Function(BarcodeResultModel) _then) = _$BarcodeResultModelCopyWithImpl;
@useResult
$Res call({
 String value, BarcodeType type
});




}
/// @nodoc
class _$BarcodeResultModelCopyWithImpl<$Res>
    implements $BarcodeResultModelCopyWith<$Res> {
  _$BarcodeResultModelCopyWithImpl(this._self, this._then);

  final BarcodeResultModel _self;
  final $Res Function(BarcodeResultModel) _then;

/// Create a copy of BarcodeResultModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? type = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as BarcodeType,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BarcodeResultModel implements BarcodeResultModel {
  const _BarcodeResultModel({required this.value, required this.type});
  factory _BarcodeResultModel.fromJson(Map<String, dynamic> json) => _$BarcodeResultModelFromJson(json);

@override final  String value;
@override final  BarcodeType type;

/// Create a copy of BarcodeResultModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BarcodeResultModelCopyWith<_BarcodeResultModel> get copyWith => __$BarcodeResultModelCopyWithImpl<_BarcodeResultModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BarcodeResultModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BarcodeResultModel&&(identical(other.value, value) || other.value == value)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,type);

@override
String toString() {
  return 'BarcodeResultModel(value: $value, type: $type)';
}


}

/// @nodoc
abstract mixin class _$BarcodeResultModelCopyWith<$Res> implements $BarcodeResultModelCopyWith<$Res> {
  factory _$BarcodeResultModelCopyWith(_BarcodeResultModel value, $Res Function(_BarcodeResultModel) _then) = __$BarcodeResultModelCopyWithImpl;
@override @useResult
$Res call({
 String value, BarcodeType type
});




}
/// @nodoc
class __$BarcodeResultModelCopyWithImpl<$Res>
    implements _$BarcodeResultModelCopyWith<$Res> {
  __$BarcodeResultModelCopyWithImpl(this._self, this._then);

  final _BarcodeResultModel _self;
  final $Res Function(_BarcodeResultModel) _then;

/// Create a copy of BarcodeResultModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? type = null,}) {
  return _then(_BarcodeResultModel(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as BarcodeType,
  ));
}


}

// dart format on
