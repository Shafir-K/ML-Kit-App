import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TranslationScreen extends HookConsumerWidget {
  const TranslationScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Translation')),
      body: const Center(child: Text('Translate UI')),
    );
  }
}
