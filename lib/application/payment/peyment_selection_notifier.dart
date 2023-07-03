import 'package:flutter/material.dart';

class PaymentSelectionNotifier extends ChangeNotifier {
  bool razorPay = true;
  bool cod = false;

  void changeToRazorPay() {
    if (cod == true) {
      cod = false;
      razorPay = true;
      notifyListeners();
    }
  }

  void changeToCod() {
    if (razorPay == true) {
      razorPay = false;
      cod = true;
      notifyListeners();
    }
  }
}
