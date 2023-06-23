import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: Center(
        child: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold, color: kwhite),
        ),
      ),
    );
  }
}