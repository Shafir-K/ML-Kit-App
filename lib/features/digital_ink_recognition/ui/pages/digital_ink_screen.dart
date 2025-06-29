import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DigitalInkScreen extends HookConsumerWidget {
  const DigitalInkScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Digital Ink Recognition')),
      body: const Center(child: Text('Ink UI')),
    );
  }
}
