import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EntityExtractionScreen extends HookConsumerWidget {
  const EntityExtractionScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entity Extraction')),
      body: const Center(child: Text('Entity UI')),
    );
  }
}
