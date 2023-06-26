import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  DrawerTile(
      {super.key, required this.icon, required this.title, required this.size});

  IconData icon;
  String title;
  double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      // color: kred,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Spacer(
            flex: 3,
          ),
          SizedBox(
            // color: kred,
            width: 30,
            child: Icon(
              icon,
              size: size,
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          SizedBox(
            // color: kred,
            width: 150,
            child: Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(
            flex: 13,
          )
        ],
      ),
    );
  }
}
