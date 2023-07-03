import 'package:flutter/material.dart';

class SearchNotifier extends ChangeNotifier {
  void searchChange() {
    notifyListeners();
  }
}
