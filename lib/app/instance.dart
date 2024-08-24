import 'package:flutter/material.dart';
import 'package:locator/locator.dart';
import 'package:titanium/app/router.dart';

@Module()
abstract class Application {
  static late final Application instance;

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  abstract final ApplicationRouter router;

  void showSnackbar(SnackBar snackBar) {
    scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
  }

  State? get state => scaffoldMessengerKey.currentState;

  void showError(String message) {
    showSnackbar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 12),
      ),
    );
  }

  void showInfo(String message) {
    showSnackbar(
      SnackBar(
        content: Text(
          message,
          // style: const TextStyle(color: Colors.white),
        ),
        // backgroundColor: Colors.blue,
        duration: const Duration(seconds: 4),
      ),
    );
  }
}
