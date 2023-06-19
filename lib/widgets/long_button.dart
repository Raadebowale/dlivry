import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class LongButton extends StatelessWidget {
  const LongButton({
    super.key,
    required this.text,
    required this.width,
    required this.onpressed,
    this.active = true,
  });

  final VoidCallback onpressed;
  final String text;
  final double width;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        alignment: Alignment.bottomCenter,
        height: 50.0,
        width: width,
        decoration: BoxDecoration(
          color: active ? AppColors.primary : AppColors.disabled,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: active ? Colors.white : AppColors.smallgreyText,
            ),
          ),
        ),
      ),
    );
  }
}
