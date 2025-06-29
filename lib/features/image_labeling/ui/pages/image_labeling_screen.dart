import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:google_mlkit_image_labeling/google_mlkit_image_labeling.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ml_kit_app/features/image_labeling/providers/image_labeling_notifier.dart';

class ImageLabelingScreen extends HookConsumerWidget {
  const ImageLabelingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(imageLabelingNotifierProvider);
    final notifier = ref.read(imageLabelingNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Image Labeling')),
      body: Stack(
        fit: StackFit.expand,
        children: [
          if (state.image != null)
            Image.file(File(state.image!.path), fit: BoxFit.contain),
          if (state.isLoading)
            const Center(child: CircularProgressIndicator())
          else if (state.labels != null)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: state.labels!
                      .map(
                        (label) => Text(
                          '${label.label}: ${label.confidence.toStringAsFixed(2)}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: notifier.pickImage,
              child: const Icon(Icons.add_a_photo),
            ),
          ),
        ],
      ),
    );
  }
}
