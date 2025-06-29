import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LanguageIdScreen extends HookConsumerWidget {
  const LanguageIdScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Language ID')),
      body: const Center(child: Text('Language UI')),
    );
  }
}
