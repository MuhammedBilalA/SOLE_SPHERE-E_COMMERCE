import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.end,

      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
        ),
        Container(
            width: double.infinity,
            // height: 100,
            // color: Colors.amber,
            child: Center(
              child: Container(
                height: 220,
                width: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(120), color: kwhite),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(120),
                    child: Image.asset(
                      'assets/images/bilal.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
            )),
        SizedBox(
          height: 10,
        ),
        ProfileTileWidget(
          icon: Icons.person,
          title: 'Muhammed Bilal A',
        ),
        ProfileTileWidget(
          icon: Icons.email_outlined,
          title: 'bilalmuhammed402@gmail.com',
        ),
        ProfileTileWidget(
          icon: Icons.phone,
          title: '8606708772',
        ),
        const Expanded(
          flex: 1,
          child: SizedBox(
            width: double.infinity,
            // height: 50,
            child: Center(
              child: Text(
                'Version 1.0.0',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          ),
        )
      ],

      // )
    );
  }
}

class ProfileTileWidget extends StatelessWidget {
  ProfileTileWidget({super.key, required this.icon, required this.title});

  IconData icon;
  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 10, top: 20),
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
            border: Border.all(color: kwhite, width: 2),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            SizedBox(
              height: 70,
              width: 65,
              // color: Colors.red,
              child: Icon(
                icon,
                color: kwhite,
              ),
            ),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: kwhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
