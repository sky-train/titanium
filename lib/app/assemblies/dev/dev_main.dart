import 'package:flutter/material.dart';

import '../../instance.dart';
import '../../instance.module.g.dart';
import 'app_widget_dev.dart';

Future<void> devMain() async {
  WidgetsFlutterBinding.ensureInitialized();

  final backoffice = ApplicationImpl();
  await backoffice.initialize();
  Application.instance = backoffice;

  runApp(AppWidget(
    routerDelegate: backoffice.router,
    scaffoldMessengerKey: backoffice.scaffoldMessengerKey,
  ));
}
