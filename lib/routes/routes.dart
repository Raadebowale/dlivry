import 'package:dlivry/screens/login_screen.dart';
import 'package:dlivry/screens/onboarding.dart';
import 'package:flutter/material.dart';

import '../screens/splash_screen.dart';
import 'route_path.dart';

Map<String, Widget Function(BuildContext)> myRoutes(BuildContext context) {
  return {
    RoutePath.splash: (context) => const SplashScreen(),
    RoutePath.onboarding: (context) => const Onboading(),
    RoutePath.login: (context) => const Login(),
  };
}
