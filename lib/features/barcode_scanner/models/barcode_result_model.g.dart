// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barcode_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BarcodeResultModel _$BarcodeResultModelFromJson(Map<String, dynamic> json) =>
    _BarcodeResultModel(
      value: json['value'] as String,
      type: $enumDecode(_$BarcodeTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$BarcodeResultModelToJson(_BarcodeResultModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'type': _$BarcodeTypeEnumMap[instance.type]!,
    };

const _$BarcodeTypeEnumMap = {
  BarcodeType.unknown: 'unknown',
  BarcodeType.contactInfo: 'contactInfo',
  BarcodeType.email: 'email',
  BarcodeType.isbn: 'isbn',
  BarcodeType.phone: 'phone',
  BarcodeType.product: 'product',
  BarcodeType.sms: 'sms',
  BarcodeType.text: 'text',
  BarcodeType.url: 'url',
  BarcodeType.wifi: 'wifi',
  BarcodeType.geoCoordinates: 'geoCoordinates',
  BarcodeType.calendarEvent: 'calendarEvent',
  BarcodeType.driverLicense: 'driverLicense',
};
