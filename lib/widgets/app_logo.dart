import 'package:flutter/material.dart';

import '../utils/app_images.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      width: size,
      height: size,
      fit: BoxFit.cover,
      AppImages.appLogo,
    );
  }
}
