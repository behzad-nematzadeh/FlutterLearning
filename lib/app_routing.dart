import 'package:flutter/material.dart';
import 'package:flutter_learning/home_page.dart';
import 'package:flutter_learning/login_page.dart';
import 'package:flutter_learning/unknown_view.dart';

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings settings) {
    Widget builder;
    if (settings.name == '/home') {
      builder = const HomePage();
    } else if (settings.name == '/' || settings.name == '/Login') {
      builder = const LoginPage();
    } else {
      return null;
    }

    return MaterialPageRoute(builder: (_) => builder);
  }

  static Route onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => const UnknownView());
  }
}
