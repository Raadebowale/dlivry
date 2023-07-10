import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/app_colors.dart';

class ServiceContainer extends StatelessWidget {
  const ServiceContainer({
    super.key,
    required this.onpressed,
    required this.title,
    required this.icon,
  });
  final VoidCallback onpressed;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: AppColors.lightBg,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            FaIcon(
              icon,
              color: AppColors.primary,
              size: 40,
            ),
            const SizedBox(height: 15),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
