import 'package:complete_advenced_flutter/presentation/forgot_password/forgot_password.dart';
import 'package:complete_advenced_flutter/presentation/login/login.dart';
import 'package:complete_advenced_flutter/presentation/main/main.dart';
import 'package:complete_advenced_flutter/presentation/onboarding/onboarding.dart';
import 'package:complete_advenced_flutter/presentation/register/register.dart';
import 'package:complete_advenced_flutter/presentation/resources/string_manager.dart';
import 'package:complete_advenced_flutter/presentation/splash/splash.dart';
import 'package:complete_advenced_flutter/presentation/store_detail/store_detail.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardRoute = "/onboarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());

      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());

      case Routes.onBoardRoute:
        return MaterialPageRoute(builder: (_) => OnboardingView());

      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());

      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPassword());

      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());

      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => StoreDetailView());

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
