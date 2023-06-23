import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sole_sphere/core/colors/colors.dart';
import 'package:sole_sphere/presentation/home_screen/home_screen.dart';
import 'package:sole_sphere/presentation/my_cart_screen/my_cart_screen.dart';
import 'package:sole_sphere/presentation/my_order_screen/my_order_screen.dart';
import 'package:sole_sphere/presentation/profile_screen/profile_screen.dart';
import 'package:sole_sphere/presentation/wishlist_screen/wishlist_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  final List<Widget> _pages = const [
    HomeScreen(),
    WishListScreen(),
    MyOrderScreen(),
    MyCartScreen(),
    ProfileScreen()
  ];
  final List<Widget> trailing = const [
    Icon(Icons.settings_suggest_sharp),
    Icon(Icons.search),
    Icon(Icons.search),
    Icon(Icons.search),
    Icon(Icons.edit),
  ];
  final List<String> _title = const [
    'Home',
    'Wishlist',
    'My Orders',
    "My Cart",
    "Profile"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: kwhite,
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          _title[_currentIndex],
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
              onTap: () {
                if (_currentIndex == 0) {
                  log('home');
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
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: GNav(
        tabMargin: EdgeInsets.all(3),
        padding: EdgeInsets.all(16),
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
        selectedIndex: _currentIndex,
        onTabChange: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
