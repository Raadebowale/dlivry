import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class Subheader extends StatelessWidget {
  const Subheader({
    super.key,
    required this.title,
    this.subtitle,
    this.onpressed,
  });
  final String title;
  final String? subtitle;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: AppColors.textBlack,
                fontSize: subtitle != null ? 23 : 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            if (onpressed != null)
              InkWell(
                onTap: onpressed,
                child: const Text(
                  "View All",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 12,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 10),
        if (subtitle != null)
          Text(
            subtitle!,
            style: const TextStyle(
              color: AppColors.smallgreyText,
              fontSize: 14,
            ),
          ),
      ],
    );
  }
}
