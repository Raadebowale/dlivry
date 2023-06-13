import 'package:dlivry/utils/app_colors.dart';
import 'package:dlivry/utils/app_images.dart';
import 'package:flutter/material.dart';

class Onboading extends StatelessWidget {
  const Onboading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Text(
              "Skip",
              style: TextStyle(
                fontSize: 12.0,
                color: AppColors.smallgreyText,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppImages.firstImage,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
