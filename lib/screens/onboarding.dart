import 'package:dlivry/utils/app_colors.dart';
import 'package:dlivry/utils/app_images.dart';
import 'package:flutter/material.dart';

class Onboading extends StatelessWidget {
  const Onboading({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 35.0,
        ),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.lightBg,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      AppImages.firstImage,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: AppColors.textBlack,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: AppColors.primary,
                        ),
                        child: const Icon(
                          Icons.arrow_forward_rounded,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 15),
                    const Text(
                      "Best package\ndelivery just for you",
                      style: TextStyle(
                        color: AppColors.textBlack,
                        fontSize: 28.0,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "It is a long extablished fact that a reader will\nbe distracted by the readable content.",
                      style: TextStyle(
                        color: AppColors.smallgreyText,
                        fontSize: 14.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 25),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50.0,
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
