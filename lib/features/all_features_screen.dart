import 'package:flutter/material.dart';
import 'package:ml_kit_app/main.dart';

class AllFeaturesScreen extends StatelessWidget {
  const AllFeaturesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final features = [
      {'title': 'Barcode Scanner', 'route': '/barcode-scanner'},
      {'title': 'Face Detection', 'route': '/face-detection'},
      {'title': 'Face Mesh Detection', 'route': '/face-mesh-detection'},
      {'title': 'Text Recognition', 'route': '/text-recognition'},
      {'title': 'Image Labeling', 'route': '/image-labeling'},
      {'title': 'Object Detection', 'route': '/object-detection'},
      {'title': 'Digital Ink Recognition', 'route': '/digital-ink'},
      {'title': 'Pose Detection', 'route': '/pose-detection'},
      {'title': 'Selfie Segmentation', 'route': '/selfie-segmentation'},
      {'title': 'Subject Segmentation', 'route': '/subject-segmentation'},
      {'title': 'Document Scanner', 'route': '/document-scanner'},
      {'title': 'Language ID', 'route': '/language-id'},
      {'title': 'Translation', 'route': '/translation'},
      {'title': 'Smart Reply', 'route': '/smart-reply'},
      {'title': 'Entity Extraction', 'route': '/entity-extraction'},
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Smart ML Toolkit'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: features.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            final feature = features[index];
            return ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, feature['route']!),
              child: Text(feature['title']!, textAlign: TextAlign.center),
            );
          },
        ),
      ),
    );
  }
}
