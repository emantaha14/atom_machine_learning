import 'package:atom/presentaion_layer/home/home_view/home_view.dart';
import 'package:atom/presentaion_layer/onboarding/onboarding_view/onboarding.dart';
import 'package:atom/presentaion_layer/resources/strings_manager.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String onBoardingRoute = '/';
  static const String homeRoute = '/home';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.noRouteFound),
        ),
        body: Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
