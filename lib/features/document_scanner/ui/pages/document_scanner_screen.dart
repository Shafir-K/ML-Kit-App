import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DocumentScannerScreen extends HookConsumerWidget {
  const DocumentScannerScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Document Scanner')),
      body: const Center(child: Text('Scanner UI')),
    );
  }
}
