import 'package:flutter/material.dart';

import 'package:dlivry/routes/route_path.dart';
import 'package:dlivry/utils/app_images.dart';
import '../widgets/boarding_container.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  double currentindex = 0;
  final pageController = PageController(initialPage: 0, keepPage: true);
  @override
  Widget build(BuildContext context) {
    final pages = [
      BoardingContainer(
        onpressed: () {
          pageController.nextPage(
              duration: const Duration(
                milliseconds: 300,
              ),
              curve: Curves.easeIn);
          /* setState(() {
            currentindex += 1;
          }); */
        },
        controller: pageController,
        image: AppImages.firstImage,
        title: "Best package\ndelivery just for you",
        subtitle:
            "It is a long extablished fact that a reader will\nbe distracted by the readable content.",
      ),
      BoardingContainer(
        onpressed: () {
          pageController.nextPage(
              duration: const Duration(
                milliseconds: 300,
              ),
              curve: Curves.easeIn);
        },
        controller: pageController,
        image: AppImages.secondImage,
        title: "Track your parcel\nfrom anywhere",
        subtitle:
            "It is a long extablished fact that a reader will\nbe distracted by the readable content.",
      ),
      BoardingContainer(
        onpressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, RoutePath.login, (route) => false);
        },
        lastPage: true,
        controller: pageController,
        image: AppImages.thirdImage,
        title: "Get your parcel\nsafely on time",
        subtitle:
            "It is a long extablished fact that a reader will\nbe distracted by the readable content.",
      ),
    ];
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: pages.length,
        itemBuilder: (context, currentindex) {
          return pages[currentindex];
        },
      ),
    );
  }
}
