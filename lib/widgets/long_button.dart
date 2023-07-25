import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class LongButton extends StatelessWidget {
  const LongButton({
    super.key,
    required this.text,
    required this.width,
    required this.onpressed,
    this.active = true,
    this.alignment,
    this.icon,
  });

  final VoidCallback onpressed;
  final String text;
  final AlignmentGeometry? alignment;
  final double width;
  final bool active;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: active ? onpressed : null,
      child: Center(
        child: Container(
          alignment: alignment ?? Alignment.center,
          height: 50.0,
          width: width,
          decoration: BoxDecoration(
            color: active ? AppColors.primary : AppColors.disabled,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                Icon(
                  icon,
                  color: Colors.white,
                  // size: 25,
                ),
              const SizedBox(width: 5),
              Text(
                text,
                style: TextStyle(
                  color: active ? Colors.white : AppColors.smallgreyText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
