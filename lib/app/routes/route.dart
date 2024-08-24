// import 'package:flutter/material.dart';
// import 'package:yttrium_backoffice_ui/app/instance.dart';
// import 'package:yttrium_backoffice_ui/modules/home/screens.lib.g.dart';
//
// class HomePageRouteArgs {
//   final Key? key;
//
//   HomePageRouteArgs({this.key});
// }
//
// class HomePageRoute extends Page<HomeScreen> {
//   HomePageRoute({Key? key})
//       : super(
//           key: const ValueKey('home'),
//           name: 'home',
//           arguments: HomePageRouteArgs(),
//         );
//
//   @override
//   Route<HomeScreen> createRoute(BuildContext context) {
//     return MaterialPageRoute(
//       settings: this,
//       builder: (BuildContext context) {
//         final args = arguments as HomePageRouteArgs;
//         return HomeScreen(
//           key: args.key,
//           service: Application.instance.foodDataService,
//         );
//       },
//     );
//   }
// }
//
// class HomePageAnimatedRoute extends Page<HomeScreen> {
//   HomePageAnimatedRoute({Key? key})
//       : super(
//           key: const ValueKey('home'),
//           name: 'home',
//           arguments: HomePageRouteArgs(),
//         );
//
//   @override
//   Route<HomeScreen> createRoute(BuildContext context) {
//     return PageRouteBuilder(
//       settings: this,
//       pageBuilder: (context, animation, secondaryAnimation) {
//         final args = arguments as HomePageRouteArgs;
//         return HomeScreen(
//           key: args.key,
//           service: Application.instance.foodDataService,
//         );
//       },
//       transitionsBuilder: (context, animation, secondaryAnimation, child) {
//         final tween = Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset.zero);
//         return SlideTransition(
//           position: animation.drive(tween),
//           child: child,
//         );
//       },
//     );
//   }
// }
