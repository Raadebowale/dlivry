import 'dart:developer';

import 'package:flutter/material.dart';

class ConstantProvider extends ChangeNotifier {
  // int selectedContainer = 0;
  /* void selectContainer(int index) {
      setState(() {
        selectedContainer = index;
        log("$selectedContainer");
        // selected = !selected;
      });
    } */
  bool firstContainer = false;
  bool secondContainer = false;
  bool thirdContainer = false;
  void selectContainer(int index) {
    // selectedContainer = index;
    if (index == 0) {
      firstContainer = true;
      secondContainer = false;
      thirdContainer = false;
      notifyListeners();
      log("$firstContainer");
    }
    if (index == 1) {
      secondContainer = true;
      firstContainer = false;
      thirdContainer = false;
      notifyListeners();
      log("$secondContainer");
    }
    if (index == 2) {
      thirdContainer = true;
      firstContainer = false;
      secondContainer = false;
      notifyListeners();
      log("$thirdContainer");
    }
    // selectedContainer = index;
    // log("$selectedContainer");
    // selected = !selected;
  }
}
