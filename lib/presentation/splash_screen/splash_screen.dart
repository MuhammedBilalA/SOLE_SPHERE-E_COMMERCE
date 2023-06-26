import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';
import 'package:sole_sphere/presentation/nav_bar/nav_bar.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Timer(const Duration(seconds: 2, milliseconds: 750), () async {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => NavBar(),
        ));
      });
    });
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/q.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 110,
            bottom: 150,
            child: Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/solespherebagremoved.png')),
          ),
          Positioned(
              left: 190,
              bottom: 150,
              child: CircularProgressIndicator(
                color: kwhite,
              ))
        ],
      ),
    );
  }
}
