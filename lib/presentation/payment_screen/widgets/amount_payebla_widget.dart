
import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';

class AmountPayableWidget extends StatelessWidget {
  AmountPayableWidget(
      {super.key,
      required this.isGreen,
      required this.leading,
      required this.trialing});
  String leading;
  String trialing;
  bool isGreen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leading,
            style: TextStyle(
                color: kwhite, fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Text(
            trialing,
            style: TextStyle(
                color:
                    (isGreen) ? const Color.fromARGB(255, 0, 255, 8) : kwhite,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          )
        ],
      ),
    );
  }
}
