import 'package:dlivry/screens/enter_otp.dart';
import 'package:dlivry/screens/forgot_password.dart';
import 'package:dlivry/screens/login_screen.dart';
import 'package:dlivry/screens/mainactivity/components/main_activity.dart';
import 'package:dlivry/screens/new_passord.dart';
import 'package:dlivry/screens/onboarding.dart';
import 'package:flutter/material.dart';

import '../screens/register_screen.dart';
import '../screens/splash_screen.dart';
import 'route_path.dart';

Map<String, Widget Function(BuildContext)> myRoutes(BuildContext context) {
  return {
    RoutePath.splash: (context) => const SplashScreen(),
    RoutePath.onboarding: (context) => const Onboading(),
    RoutePath.login: (context) => const Login(),
    RoutePath.register: (context) => const Register(),
    RoutePath.forgotpassword: (context) => const ForgotPassword(),
    RoutePath.enterotp: (context) => const EnterOtp(),
    RoutePath.newpassword: (context) => const NewPassword(),
    RoutePath.main: (context) => const MainActivity(),
  };
}
