import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ml_kit_app/core/utils/app_snack_bar.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';

import 'features/all_features_screen.dart';
import 'features/barcode_scanner/ui/pages/barcode_scanner_screen.dart';
import 'features/digital_ink_recognition/ui/pages/digital_ink_screen.dart';
import 'features/document_scanner/ui/pages/document_scanner_screen.dart';
import 'features/entity_extraction/ui/pages/entity_extraction_screen.dart';
import 'features/face_detection/ui/pages/face_detection_screen.dart';
import 'features/face_mesh_detection/ui/pages/face_mesh_detection_screen.dart';
import 'features/image_labeling/ui/pages/image_labeling_screen.dart';
import 'features/language_id/ui/pages/language_id_screen.dart';
import 'features/object_detection/ui/pages/object_detection_screen.dart';
import 'features/pose_detection/ui/pages/pose_detection_screen.dart';
import 'features/selfie_segmentation/ui/pages/selfie_segmentation_screen.dart';
import 'features/smart_reply/ui/pages/smart_reply_screen.dart';
import 'features/subject_segmentation/ui/pages/subject_segmentation_screen.dart';
import 'features/text_recognition/ui/pages/text_recognition_screen.dart';
import 'features/translation/ui/pages/translation_screen.dart';

final talker = Talker();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // if (!kDebugMode) {
  FlutterError.onError = (details) {
    talker.handle(details.exception, details.stack);
    // FlutterError.presentError(details);
  };
  // PlatformDispatcher.instance.onError = (error, stackTrace) {
  //   talker.handle(error, stackTrace);
  //   return !kDebugMode;
  // };
  // }
  runApp(
    ProviderScope(
      observers: [
        TalkerRiverpodObserver(
          talker: talker,
          settings: TalkerRiverpodLoggerSettings(printProviderDisposed: true),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart ML Toolkit',
      theme: ThemeData(primarySwatch: Colors.deepPurple, useMaterial3: true),
      scaffoldMessengerKey: AppSnackBar.scaffoldMessengerKey,
      initialRoute: '/',
      routes: {
        '/': (context) => const AllFeaturesScreen(),
        '/barcode-scanner': (context) => const BarcodeScannerScreen(),
        '/face-detection': (context) => const FaceDetectionScreen(),
        '/face-mesh-detection': (context) => const FaceMeshDetectionScreen(),
        '/text-recognition': (context) => const TextRecognitionScreen(),
        '/image-labeling': (context) => const ImageLabelingScreen(),
        '/object-detection': (context) => const ObjectDetectionScreen(),
        '/digital-ink': (context) => const DigitalInkScreen(),
        '/pose-detection': (context) => const PoseDetectionScreen(),
        '/selfie-segmentation': (context) => const SelfieSegmentationScreen(),
        '/subject-segmentation': (context) => const SubjectSegmentationScreen(),
        '/document-scanner': (context) => const DocumentScannerScreen(),
        '/language-id': (context) => const LanguageIdScreen(),
        '/translation': (context) => const TranslationScreen(),
        '/smart-reply': (context) => const SmartReplyScreen(),
        '/entity-extraction': (context) => const EntityExtractionScreen(),
      },
    );
  }
}
