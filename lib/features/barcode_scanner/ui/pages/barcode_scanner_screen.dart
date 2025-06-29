import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ml_kit_app/core/utils/app_snack_bar.dart';
import 'package:ml_kit_app/main.dart';

import '../../providers/barcode_scanner_providers.dart';

class BarcodeScannerScreen extends HookConsumerWidget {
  const BarcodeScannerScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(barcodeScannerProvider, (previous, next) {
      next.when(
        data: (data) => showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: const Text('Scan Results'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: data
                  .map(
                    (e) => ListTile(
                      title: Text(e.value),
                      subtitle: Text(e.type.name),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        error: (error, stackTrace) {
          talker.info("msg");
          AppSnackBar.showError(error.toString());
          talker.handle(error, stackTrace);
        },
        loading: () {},
      );
    });
    return Scaffold(
      appBar: AppBar(title: const Text('Barcode Scanner')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // return;
            final image = await _getInputImage();
            if (image == null) return;
            ref.read(barcodeScannerProvider.notifier).scan(image);
          },
          child: const Text('Pick Image and Scan'),
        ),
      ),
    );
  }

  Future<InputImage?> _getInputImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return null;
    return InputImage.fromFilePath(pickedFile.path);
  }
}
