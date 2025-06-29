import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';

class BarcodeDataSource {
  final BarcodeScanner _barcodeScanner = BarcodeScanner();

  Future<List<Barcode>> scanFromImage(InputImage image) async {
    try {
      final barcodes = await _barcodeScanner.processImage(image);
      return barcodes;
    } catch (e) {
      rethrow;
    }
  }

  void dispose() {
    _barcodeScanner.close();
  }
}
