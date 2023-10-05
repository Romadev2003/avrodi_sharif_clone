import 'package:avrodi_sharif_clone/screens/home/ui/home_page.dart';
import 'package:flutter/material.dart';

import '../../screens/splash/splash_page.dart';

abstract class RouteName {
  static const splash = '/splash';static const home = '/home';
}

class AppRouts {
  static Route generateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case RouteName.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
        );case RouteName.home:
        return MaterialPageRoute(
          builder: (_) =>  HomePage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(),
        );
    }
  }
}
