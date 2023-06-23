import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class LoginOption extends StatelessWidget {
  const LoginOption({
    super.key,
    required this.image,
    required this.text,
    this.onpressed,
  });

  final String image;
  final String text;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onpressed,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.lightText,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
                width: 35,
              ),
              const SizedBox(width: 5),
              Text(
                text,
                style: const TextStyle(
                  color: AppColors.textBlack,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
