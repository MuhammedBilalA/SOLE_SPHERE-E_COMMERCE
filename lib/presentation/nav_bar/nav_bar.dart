import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:sole_sphere/application/nav_bar_notifier/nav_bar_notifier.dart';
import 'package:sole_sphere/core/colors/colors.dart';
import 'package:sole_sphere/infrastructure/authentication_functions/authentication_function.dart';
import 'package:sole_sphere/presentation/home_screen/home_screen.dart';
import 'package:sole_sphere/presentation/login_screens/sign_in_screen.dart';
import 'package:sole_sphere/presentation/my_cart_screen/my_cart_screen.dart';
import 'package:sole_sphere/presentation/my_order_screen/my_order_screen.dart';
import 'package:sole_sphere/presentation/nav_bar/widgets/drawer_list_tile.dart';
import 'package:sole_sphere/presentation/profile_screen/profile_screen.dart';
import 'package:sole_sphere/presentation/widgets/custom_snackbar.dart';
import 'package:sole_sphere/presentation/widgets/question_popup.dart';
import 'package:sole_sphere/presentation/wishlist_screen/wishlist_screen.dart';

class NavBar extends StatelessWidget {
  NavBar({Key? key}) : super(key: key);

  final List<Widget> _pages = [
    HomeScreen(),
    const WishListScreen(),
    const MyOrderScreen(),
    MyCartScreen(),
    const ProfileScreen(),
  ];

  List<Widget> trailing = [
    // const Icon(Icons.settings_suggest_sharp),
    const SizedBox(),
    const Icon(Icons.search),
    const Icon(Icons.search),
    const Icon(Icons.search),
    const Icon(Icons.edit),
  ];

  final List<String> _title = ['Home', 'Wishlist', 'My Orders', "My Cart", "Profile"];

  @override
  Widget build(BuildContext context) {
    final currentIDX = Provider.of<NavBarNotifier>(
      context,
    );

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: kblack,
        drawer: drawer(context),
        appBar: appbar(context, currentIDX.currentIndex),
        body: Consumer<NavBarNotifier>(builder: (context, data, _) {
          return _pages[data.currentIndex];
        }),
        bottomNavigationBar: GNav(
          tabMargin: const EdgeInsets.all(3),
          padding: const EdgeInsets.all(16),
          gap: 8,
          backgroundColor: kblack,
          activeColor: kblack,
          tabBackgroundColor: kwhite,
          color: Colors.grey,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite,
              text: 'Liked',
            ),
            GButton(
              icon: Icons.shopping_cart_outlined,
              text: 'Order',
            ),
            GButton(
              icon: Icons.shopping_bag,
              text: 'Cart',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            ),
          ],
          selectedIndex: currentIDX.currentIndex,
          onTabChange: (index) {
            // setState(() {
            currentIDX.currentIndexFinder(index);
            // });
          },
        ),
      ),
    );
  }

  AppBar appbar(BuildContext context, int _currentIndex) {
    return AppBar(
        backgroundColor: kblack,
        centerTitle: true,
        title: Text(
          _title[_currentIndex],
          style: const TextStyle(fontWeight: FontWeight.bold, color: kwhite),
        ),
        actions: [
          InkWell(
              onTap: () {
                if (_currentIndex == 0) {
                  log('home');
                  questionPopUp(
                      function: () {
                        Authentication(context: context).signOut();
                        snackbarFailed(text: 'LogOut Successfully', context: context);
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignInScreen(),
                        ));
                      },
                      context: context,
                      title: 'Are you sure you want to LogOut',
                      yes: 'LogOut',
                      no: 'Cancel');
                  // logOut(context);
                } else if (_currentIndex == 1) {
                  log('liked');
                } else if (_currentIndex == 2) {
                  log('order');
                } else if (_currentIndex == 3) {
                  log('cart');
                } else if (_currentIndex == 4) {
                  log('profile');
                }
              },
              child: trailing[_currentIndex]),
          const SizedBox(
            width: 15,
          )
        ],
        bottom: (_currentIndex == 2)
            ? TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: kblack,
                labelColor: kblack,
                tabs: [
                    Tab(
                      child: Text(
                        'All Orders',
                        style: TextStyle(color: kwhite),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Pending Orders',
                        style: TextStyle(color: kwhite),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Cancelled Orders',
                        style: TextStyle(color: kwhite),
                      ),
                    ),
                  ])
            : PreferredSize(preferredSize: Size(0, 0), child: SizedBox()));
  }

  Drawer drawer(BuildContext context) {
    return Drawer(
      backgroundColor: kwhite,
      child: Column(
        children: [
          Stack(children: [
            Container(
              color: kblack,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.29,
            ),
            Positioned(
                left: MediaQuery.of(context).size.width * 0.35,
                top: MediaQuery.of(context).size.height * 0.09,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.11,
                  width: MediaQuery.of(context).size.width * 0.23,
                  decoration: BoxDecoration(border: Border.all(color: kwhite, width: 2)),
                )),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.1,
              top: MediaQuery.of(context).size.height * 0.13,
              child: Container(
                color: kblack,
                child: const Text(
                  "SOLE SPHERE",
                  style: TextStyle(color: kwhite, fontWeight: FontWeight.bold, fontSize: 27),
                ),
              ),
            )
          ]),
          const SizedBox(
            height: 10,
          ),
          DrawerTile(
            icon: Icons.handyman_outlined,
            title: 'Terms & Conditions',
            size: 26,
          ),
          DrawerTile(
            icon: Icons.lock,
            title: 'Privacy Policy',
            size: 26,
          ),
          DrawerTile(
            icon: Icons.telegram,
            title: 'Invite Friends',
            size: 26,
          ),
          DrawerTile(
            icon: Icons.info_outline,
            title: 'About Us',
            size: 26,
          ),
          InkWell(
            onTap: () {
              questionPopUp(
                  function: () {
                    Authentication(context: context).signOut();
                    snackbarFailed(text: 'LogOut Successfully', context: context);
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ));
                  },
                  context: context,
                  title: 'Are you sure you want to LogOut',
                  yes: 'LogOut',
                  no: 'Cancel');
            },
            child: DrawerTile(
              icon: Icons.settings,
              title: 'Log Out',
              size: 26,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: Center(
                child: Text(
                  'Version 1.0.0',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  // Future<dynamic> logOut(BuildContext context) {
  //   return showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       title: Text(
  //         'are you sure you want to Logout',
  //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
  //       ),
  //       actions: [
  //         TextButton(
  //             onPressed: () {
  //               Navigator.pop(context);
  //             },
  //             child: Text(
  //               'Cancel',
  //               style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
  //             )),
  //         TextButton(
  //             onPressed: () {
  //               Authentication(context: context).signOut();
  //               snackbarFailed(text: 'LogOut Successfully', context: context);
  //               Navigator.of(context).push(MaterialPageRoute(
  //                 builder: (context) => SignInScreen(),
  //               ));
  //             },
  //             child: Text(
  //               'LogOut',
  //               style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
  //             )),
  //       ],
  //     ),
  //   );
  // }
}
