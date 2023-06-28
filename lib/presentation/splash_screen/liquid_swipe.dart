import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sole_sphere/core/colors/colors.dart';
import 'package:sole_sphere/presentation/login_screens/sign_in_screen.dart';
import 'package:sole_sphere/presentation/nav_bar/nav_bar.dart';

class LiquidSwipeClass extends StatelessWidget {
  LiquidSwipeClass({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [];
    return Scaffold(
        body: LiquidSwipe(
      pages: pages = [
        Stack(
          children: [
            const SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Image(
                  image:
                      AssetImage('assets/images/Nike Air Jordan IV.jpeg.jpg'),
                  fit: BoxFit.fitHeight,
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kheight550,
                Row(
                  children: [
                    kwidth30,
                    const Text(
                      'Welcome to',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Text(
                  'SOLESPHERE',
                  style: GoogleFonts.merriweather(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
        Stack(
          children: [
            const SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Image(
                  image: AssetImage('assets/images/Sweetsoles.jpeg.jpg'),
                  fit: BoxFit.fitHeight,
                )),
            Column(
              children: [
                kheight120,
                Row(
                  children: [
                    kwidth30,
                    const Text(
                      'Walk with Confidence,\nSOLESPHERE with Style',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        Stack(
          children: [
            const SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Image(
                  image: AssetImage('assets/images/swipeimage.jpg'),
                  fit: BoxFit.fitHeight,
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kheight650,
                Row(
                  children: [
                    kwidth10,
                    const Text(
                      'Start Journey with',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Text(
                  'SOLESPHERE',
                  style: GoogleFonts.merriweather(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Get.off( UserLogin());
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(kblack)),
                  child: const Text('Start your Journey'),
                )
              ],
            )
          ],
        ),
      ],
      slideIconWidget: Icon(
        Icons.arrow_back_ios_rounded,
        size: 40,
        color: kwhite,
      ),
      positionSlideIcon: 0.5,
      // waveType: WaveType.liquidReveal,
      enableLoop: false,
      fullTransitionValue: 300,
      enableSideReveal: true,
    ));
  }
}
