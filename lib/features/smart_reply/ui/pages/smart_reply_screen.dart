import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SmartReplyScreen extends HookConsumerWidget {
  const SmartReplyScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Smart Reply')),
      body: const Center(child: Text('Replies UI')),
    );
  }
}
