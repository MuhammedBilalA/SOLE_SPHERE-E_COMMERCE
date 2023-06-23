import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
       body: Center(
        child: const Text(
          'My cart',
          style: TextStyle(fontWeight: FontWeight.bold, color: kwhite),
        ),
      ),
    );
  }
}