import 'package:flutter/material.dart';
import 'package:payflow/presentation/views/authentication/business_information_view.dart';
import 'package:payflow/presentation/views/authentication/congratulations_view.dart';
import 'package:payflow/presentation/views/authentication/login_view.dart';
import 'package:payflow/presentation/views/authentication/register_view.dart';
import 'package:payflow/presentation/views/home/home_view.dart';
import 'package:payflow/presentation/views/onboarding/onboarding_view.dart';
import 'package:payflow/router/router.dart';

class AppRouter {
  static PageRoute _getPageRoute({
    required RouteSettings settings,
    required Widget viewToShow,
  }) {
    return MaterialPageRoute(
        builder: (context) => viewToShow, settings: settings);
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable

    T? extractArguments<T>(RouteSettings settings) {
      return settings.arguments as T?;
    }

// Usage
    var routeArgs = extractArguments<Map<String, dynamic>>(settings);

    // Map<String, dynamic> routeArgs = settings.arguments != null
    //     ? settings.arguments as Map<String, dynamic>
    //     : {};

    switch (settings.name) {
      case RoutePaths.onBoardingView:
        return _getPageRoute(
          settings: settings,
          viewToShow: OnboardingView(),
        );
      case RoutePaths.loginView:
        return _getPageRoute(
          settings: settings,
          viewToShow: LoginView(),
        );
      case RoutePaths.registerView:
        return _getPageRoute(
          settings: settings,
          viewToShow: RegisterView(),
        );
      case RoutePaths.businessVerificationView:
        return _getPageRoute(
          settings: settings,
          viewToShow: BusinessInformationView(),
        );
      case RoutePaths.congratulationsView:
        return _getPageRoute(
          settings: settings,
          viewToShow: CongratulationsView(),
        );
      case RoutePaths.homeView:
        return _getPageRoute(
          settings: settings,
          viewToShow: HomeView(),
        );
      default:
        return _getPageRoute(
          settings: settings,
          viewToShow: const Scaffold(),
        );
    }
  }
}
