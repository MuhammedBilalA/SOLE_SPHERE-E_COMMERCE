import 'package:flutter/material.dart';

class SigninNotifier extends ChangeNotifier {
  bool passwordVisible = true;
  toggle() {
    passwordVisible = !passwordVisible;
    notifyListeners();
  }
}
