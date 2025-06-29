import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ml_kit_app/features/text_recognition/providers/text_recognition_notifier.dart';

class TextRecognitionScreen extends HookConsumerWidget {
  const TextRecognitionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(textRecognitionNotifierProvider);
    final notifier = ref.read(textRecognitionNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Text Recognition')),
      body: Stack(
        fit: StackFit.expand,
        children: [
          if (state.image != null)
            Image.file(
              File(state.image!.path),
              fit: BoxFit.contain,
            ),
          if (state.isLoading)
            const Center(child: CircularProgressIndicator())
          else if (state.recognizedText != null)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  state.recognizedText!.text,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
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