import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  final GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey;
  final RouterDelegate<String> routerDelegate;

  const AppWidget({
    super.key,
    this.scaffoldMessengerKey,
    required this.routerDelegate,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: scaffoldMessengerKey,
      darkTheme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Router(
        routerDelegate: routerDelegate,
      ),
    );
  }
}
