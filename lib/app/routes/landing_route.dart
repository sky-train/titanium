import 'package:flutter/material.dart';

import '../../modules/landing/landing_screen.dart';

class LandingPageRouteArgs {
  final Key? key;
  LandingPageRouteArgs({this.key});
}

class LandingPageRoute extends Page<LandingScreen> {
  LandingPageRoute({Key? key})
      : super(
          key: const ValueKey('landing_page'),
          name: 'landing_page',
          arguments: LandingPageRouteArgs(),
        );

  @override
  Route<LandingScreen> createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        final args = arguments as LandingPageRouteArgs;
        return LandingScreen(
          key: args.key,
        );
      },
    );
  }
}
