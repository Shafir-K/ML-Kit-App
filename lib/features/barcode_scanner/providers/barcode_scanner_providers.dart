// 📁 lib/features/barcode_scanner/ui/barcode_providers.dart
import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../barcode_scanner/data_source/barcode_data_source.dart';
import '../models/barcode_result_model.dart';
import '../repository/bar_code_repository.dart';

part 'barcode_scanner_providers.g.dart';

@riverpod
BarcodeDataSource barcodeDataSource(Ref ref) => BarcodeDataSource();

@riverpod
BarcodeRepository barcodeRepository(Ref ref) {
  return BarcodeRepository(ref.read(barcodeDataSourceProvider));
}

@riverpod
class BarcodeScanner extends _$BarcodeScanner {
  @override
  FutureOr<List<BarcodeResultModel>> build() {
    return [];
  }

  Future<void> scan(InputImage image) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => ref.read(barcodeRepositoryProvider).scan(image),
    );
  }
}
