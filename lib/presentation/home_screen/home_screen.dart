import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: Center(
        child: const Text(
          'Home Screen',
          style: TextStyle(fontWeight: FontWeight.bold, color: kwhite),
        ),
      ),
    );
  }
}
