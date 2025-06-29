import 'package:flutter/material.dart';

class AppSnackBar {
  AppSnackBar._();

  static final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  static void showSuccess(String message) {
    _show(message, backgroundColor: Colors.green);
  }

  static void showError(String message) {
    _show(message, backgroundColor: Colors.red);
  }

  static void showInfo(String message) {
    _show(message, backgroundColor: Colors.blue);
  }

  static void _show(String message, {required Color backgroundColor}) {
    final messenger = scaffoldMessengerKey.currentState;

    if (messenger == null) return;

    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message, style: const TextStyle(color: Colors.white)),
          backgroundColor: backgroundColor,
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 3),
        ),
      );
  }
}
