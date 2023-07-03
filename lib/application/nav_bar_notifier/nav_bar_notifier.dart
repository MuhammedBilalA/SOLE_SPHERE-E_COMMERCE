import 'package:flutter/material.dart';

class NavBarNotifier extends ChangeNotifier {
  int currentIndex = 0;

  void currentIndexFinder(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
