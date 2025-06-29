import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';

import '../data_source/barcode_data_source.dart';
import '../models/barcode_result_model.dart';

class BarcodeRepository {
  final BarcodeDataSource _dataSource;

  BarcodeRepository(this._dataSource);

  Future<List<BarcodeResultModel>> scan(InputImage image) async {
    final barcodes = await _dataSource.scanFromImage(image);
    return barcodes.map(BarcodeResultModel.fromBarcode).toList();
  }

  void dispose() {
    _dataSource.dispose();
  }
}
