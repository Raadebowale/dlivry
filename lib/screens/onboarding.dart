import 'package:flutter/material.dart';
import 'package:dlivry/routes/route_path.dart';
import 'package:dlivry/utils/app_colors.dart';
import 'package:dlivry/utils/app_images.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/long_button.dart';

class Onboading extends StatefulWidget {
  const Onboading({super.key});

  @override
  State<Onboading> createState() => _OnboadingState();
}

class _OnboadingState extends State<Onboading> {
  int currentindex = 0;
  final pageController = PageController(initialPage: 0, keepPage: true);
  @override
  Widget build(BuildContext context) {
    final pages = [
      BoardingContainer(
        onpressed: () {
          setState(() {
            currentindex += 1;
          });
        },
        controller: pageController,
        image: AppImages.firstImage,
        title: "Best package\ndelivery just for you",
        subtitle:
            "It is a long extablished fact that a reader will\nbe distracted by the readable content.",
      ),
      BoardingContainer(
        onpressed: () {
          setState(() {
            currentindex += 1;
          });
        },
        controller: pageController,
        image: AppImages.secondImage,
        title: "Track your parcel\nfrom anywhere",
        subtitle:
            "It is a long extablished fact that a reader will\nbe distracted by the readable content.",
      ),
      BoardingContainer(
        onpressed: () {
          Navigator.pushNamed(context, RoutePath.login);
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

class BoardingContainer extends StatelessWidget {
  const BoardingContainer({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.lastPage = false,
    required this.onpressed,
    required this.controller,
  });

  final VoidCallback onpressed;
  final String image;
  final String title;
  final String subtitle;
  final bool lastPage;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
                    image,
                  ),
                ),
                if (lastPage != true)
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
                        onPressed: () {
                          Navigator.pushNamed(context, RoutePath.login);
                        },
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
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: WormEffect(),
                  ),
                  /* DotsIndicator(
                  dotsCount: 10,
                  position: 2,
              ), */
                  const SizedBox(height: 15),
                  Text(
                    title,
                    style: const TextStyle(
                      color: AppColors.textBlack,
                      fontSize: 28.0,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: AppColors.smallgreyText,
                      fontSize: 14.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 25),
                  LongButton(
                    onpressed: onpressed,
                    text: lastPage ? 'Get Started' : 'Next',
                    width: size.width * 0.8,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
