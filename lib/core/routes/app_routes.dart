import 'package:flutter/material.dart';
import 'package:tes/core/routes/routes.dart';
import 'package:tes/feature/home/home_screen.dart';
import 'package:tes/feature/logic/login_screen.dart';

class AppRoutes {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  } }