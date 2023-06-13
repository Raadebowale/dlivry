import 'package:dlivry/routes/route_path.dart';
import 'package:flutter/material.dart';

// import '../utils/app_colors.dart';
import '../utils/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    navigate();
  }

  navigate() async {
    await Future.delayed(const Duration(seconds: 7));
    if (mounted) {
      Navigator.pushReplacementNamed(context, RoutePath.onboarding);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Image(
              width: 230,
              height: 230,
              image: AssetImage(AppImages.appLogo),
            ),
            /* Text(
              'DLIVRY',
              style: TextStyle(
                color: AppColors.textBlack,
                fontSize: 45.0,
                fontWeight: FontWeight.w900,
                fontFamily: "SpaceAge",
              ),
            ), */
          ],
        ),
      ),
    );
  }
}
