
import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';

class PaymentSelectionWidget extends StatelessWidget {
  PaymentSelectionWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.isSelect});

  String icon;
  String title;
  bool isSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 75,
      decoration: BoxDecoration(
        color: kwhite,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Spacer(
            flex: 1,
          ),
          Container(
              width: 40,
              height: 40,
              // color: kred,
              child: Image.asset(
                icon,
                fit: BoxFit.cover,
              )),
          Spacer(flex: 7),
          Text(
            title,
            style: TextStyle(
                color: kblack, fontSize: 24, fontWeight: FontWeight.w900),
          ),
          Spacer(
            flex: 9,
          ),
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
                border: Border.all(color: kblack, width: 2),
                color: kwhite,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    // border: Border.all(color: kblack, width: 2),
                    color: (isSelect) ? kblack : kwhite,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}
