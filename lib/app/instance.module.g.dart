// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: ModuleCodeGeneratorEntryPoint
// **************************************************************************

import 'package:titanium/app/instance.dart';
import 'package:titanium/app/router.dart';

class ApplicationImpl extends Application {
  bool _routerInitialized = false;
  @override
  late final ApplicationRouter router;
  Future<void> initialize() async {
    _initializeApplicationRouter();
  }

  ApplicationRouter _initializeApplicationRouter() {
    if (!_routerInitialized) {
      _routerInitialized = true;
      router = ApplicationRouter();
    }
    return router;
  }
}
