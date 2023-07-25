import 'package:dlivry/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    super.key,
    required this.onpressed,
    required this.title,
    required this.prefixIcon,
  });
  final VoidCallback onpressed;
  final String title;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Row(
        children: [
          Icon(
            prefixIcon,
            color: AppColors.textBlack,
            size: 30,
          ),
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(
              color: AppColors.textBlack,
              fontSize: 16,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.chevron_right_rounded,
            color: AppColors.textBlack,
            size: 45,
          ),
        ],
      ),
    );
  }
}
