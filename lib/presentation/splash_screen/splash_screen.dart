import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';
import 'package:sole_sphere/presentation/login_screens/sign_in_screen.dart';
import 'package:sole_sphere/presentation/login_screens/sign_up_screen.dart';
import 'package:sole_sphere/presentation/nav_bar/nav_bar.dart';
import 'package:sole_sphere/presentation/splash_screen/liquid_swipe.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Future.delayed(const Duration(seconds: 1));
      final userLogin = FirebaseAuth.instance.currentUser;
      if (userLogin == null) {
        Navigator.of(context).pushReplacement(CupertinoPageRoute(
          builder: (context) => LiquidSwipeClass(),
        ));
      } else {
        Navigator.of(context).pushReplacement(CupertinoPageRoute(
          builder: (context) => NavBar(),
        ));
      }
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
          const Positioned(
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
