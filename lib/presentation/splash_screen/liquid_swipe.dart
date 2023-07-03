import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sole_sphere/application/liquid_swipe_notifier/liquid_swipe_notifier.dart';
import 'package:sole_sphere/core/colors/colors.dart';
import 'package:sole_sphere/presentation/login_screens/sign_in_screen.dart';

class LiquidSwipeClass extends StatelessWidget {
  LiquidSwipeClass({super.key});

  @override
  Widget build(BuildContext context) {
    final liquidData = Provider.of<LiquidSwipeNotifier>(context, listen: false);
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
                  image: AssetImage('assets/images/Sweetsoles.jpeg.jpg'),
                  fit: BoxFit.cover,
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kheight550,
                Row(
                  children: [
                    kwidth30,
                    Text(
                      'Welcome To',
                      style: GoogleFonts.merriweather(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Shimmer.fromColors(
                  baseColor:
                      const Color.fromARGB(255, 255, 255, 255).withOpacity(.9),
                  highlightColor: const Color.fromARGB(255, 0, 0, 0),
                  child: Text(
                    'SOLESPHERE',
                    style: GoogleFonts.merriweather(
                        fontSize: 45,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
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
                  image: AssetImage('assets/images/jordhansplash.jpeg'),
                  fit: BoxFit.cover,
                )),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                ),
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
                  image:
                      AssetImage('assets/images/Nike Air Jordan IV.jpeg.jpg'),
                  fit: BoxFit.fitHeight,
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kheight650,
                Row(
                  children: [
                    kwidth10,
                    Text(
                      'Start Journey with',
                      style: GoogleFonts.merriweather(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Shimmer.fromColors(
                  baseColor: Color.fromARGB(255, 0, 0, 0).withOpacity(.9),
                  highlightColor: Color.fromARGB(255, 255, 255, 255),
                  child: Text(
                    'SOLESPHERE',
                    style: GoogleFonts.merriweather(
                        fontSize: 45,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Get.off( UserLogin());
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ));
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(kblack)),
                  child: const Text('Start your Journey'),
                )
              ],
            )
          ],
        ),
      ],
      slideIconWidget:
          Consumer<LiquidSwipeNotifier>(builder: (context, data, _) {
        return (data.isIcon == true)
            ? const Icon(
                Icons.arrow_back_ios_rounded,
                size: 40,
                color: kwhite,
              )
            : const SizedBox();
      }),
      positionSlideIcon: 0.5,
      onPageChangeCallback: (activePageIndex) {
        liquidData.iconCheck(activePageIndex);
      },
      enableLoop: false,
      fullTransitionValue: 300,
      enableSideReveal: true,
    ));
  }
}
