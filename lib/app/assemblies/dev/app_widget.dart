// import 'dart:ui';
//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// class AppWidget extends StatefulWidget {
//   const AppWidget({super.key});
//
//   @override
//   State<AppWidget> createState() => _AppWidgetState();
// }
//
// class _AppWidgetState extends State<AppWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
//
//   /// AppState object.
//   ui.FlutterView? _view;
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     _view = View.maybeOf(context);
//   }
//
//   void didChangeMetrics() {
//     // Use this
//     final windowSize = MediaQuery.sizeOf(context);
//     final ui.Display? display = _view?.display;
//   }
//
//   void handleSizeChange(Size size) {
//     final orientations = <DeviceOrientation>[];
//     orientations.addAll([
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);
//
//     bool isSmall = size.shortestSide < 600 && size != Size.zero;
//     // bool isSmall = display.size.shortestSide / display.devicePixelRatio < 600;
//     if (!isSmall) {
//       orientations.addAll([
//         DeviceOrientation.landscapeLeft,
//         DeviceOrientation.landscapeRight,
//       ]);
//     }
//
//     SystemChrome.setPreferredOrientations(orientations);
//   }
// }
