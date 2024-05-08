

import 'package:atom/core/routing/routes.dart';
import 'package:atom/feature/login/ui/screen/login_screen.dart';
import 'package:atom/feature/sign_up/ui/screen/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../../feature/home/ui/screen/home_view.dart';
import '../../feature/onboarding/ui/screen/onboarding.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final argument = settings.arguments;

    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signup:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );


      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
