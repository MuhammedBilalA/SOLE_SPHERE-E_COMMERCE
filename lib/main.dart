import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';

import 'package:sole_sphere/presentation/nav_bar/nav_bar.dart';
import 'package:sole_sphere/presentation/splash_screen/splash_screen.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const SoleSphere());
}

class SoleSphere extends StatelessWidget {
  const SoleSphere({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: mBlack,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
