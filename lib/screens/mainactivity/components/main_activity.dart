import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:dlivry/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'pages/home_screen.dart';

class MainActivity extends StatefulWidget {
  const MainActivity({super.key});

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  int currentIndex = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const HomeScreen(),
      Container(),
      Container(),
      Container(),
    ];
    return Scaffold(
      body: pages[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          FontAwesomeIcons.house,
          FontAwesomeIcons.cube,
          FontAwesomeIcons.bell,
          FontAwesomeIcons.gear,
        ],
        activeIndex: currentIndex,
        activeColor: AppColors.primary,
        inactiveColor: AppColors.textBlack,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}
