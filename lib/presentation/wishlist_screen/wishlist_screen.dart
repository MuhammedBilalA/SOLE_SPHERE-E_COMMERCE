import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: Center(
        child: const Text(
          'wish list',
          style: TextStyle(fontWeight: FontWeight.bold, color: kwhite),
        ),
      ),
    );
  }
}
