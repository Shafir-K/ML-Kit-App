import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SubjectSegmentationScreen extends HookConsumerWidget {
  const SubjectSegmentationScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Subject Segmentation')),
      body: const Center(child: Text('Subject UI')),
    );
  }
}
