import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sole_sphere/application/liquid_swipe_notifier/liquid_swipe_notifier.dart';
import 'package:sole_sphere/application/nav_bar_notifier/nav_bar_notifier.dart';
import 'package:sole_sphere/application/payment/peyment_selection_notifier.dart';
import 'package:sole_sphere/application/search/search_notifier.dart';
import 'package:sole_sphere/application/sign_in/sign_in_notifier.dart';
import 'package:sole_sphere/core/colors/colors.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PaymentSelectionNotifier>(
          create: (context) => PaymentSelectionNotifier(),
        ),
        ChangeNotifierProvider<SearchNotifier>(
          create: (context) => SearchNotifier(),
        ),
        ChangeNotifierProvider<NavBarNotifier>(
          create: (context) => NavBarNotifier(),
        ),
        ChangeNotifierProvider<LiquidSwipeNotifier>(
          create: (context) => LiquidSwipeNotifier(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: mBlack,
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
