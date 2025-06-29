import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';

part 'barcode_result_model.freezed.dart';
part 'barcode_result_model.g.dart';

@freezed
abstract class BarcodeResultModel with _$BarcodeResultModel {
  const factory BarcodeResultModel({
    required String value,
    required BarcodeType type,
  }) = _BarcodeResultModel;

  factory BarcodeResultModel.fromBarcode(Barcode barcode) =>
      BarcodeResultModel(value: barcode.displayValue ?? '', type: barcode.type);

  factory BarcodeResultModel.fromJson(Map<String, dynamic> json) =>
      _$BarcodeResultModelFromJson(json);
}
