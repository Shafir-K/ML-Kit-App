import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelfieSegmentationScreen extends HookConsumerWidget {
  const SelfieSegmentationScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Selfie Segmentation')),
      body: const Center(child: Text('Selfie UI')),
    );
  }
}
