import 'package:flutter/material.dart';

class LiquidSwipeNotifier extends ChangeNotifier {
  bool isIcon = true;
  void iconCheck(int index) {
    if (index == 2) {
      isIcon = false;
      notifyListeners();
    } else {
      isIcon = true;
      notifyListeners();
    }
  }
}
