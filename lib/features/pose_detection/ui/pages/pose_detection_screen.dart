import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PoseDetectionScreen extends HookConsumerWidget {
  const PoseDetectionScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pose Detection')),
      body: const Center(child: Text('Pose UI')),
    );
  }
}
