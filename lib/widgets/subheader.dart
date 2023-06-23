import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class Subheader extends StatelessWidget {
  const Subheader({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: AppColors.textBlack,
            fontSize: 23,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          subtitle,
          style: const TextStyle(
            color: AppColors.smallgreyText,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
