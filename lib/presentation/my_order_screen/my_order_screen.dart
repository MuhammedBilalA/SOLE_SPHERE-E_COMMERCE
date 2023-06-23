import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
     
       body: Center(
        child: const Text(
          'Myorder',
          style: TextStyle(fontWeight: FontWeight.bold, color: kwhite),
        ),
      ),
    );
  }
}