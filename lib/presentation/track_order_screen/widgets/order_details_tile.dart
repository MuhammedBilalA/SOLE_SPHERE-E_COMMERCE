import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';
import 'package:sole_sphere/presentation/track_order_screen/track_order_screen.dart';

class OrderDetailsTile extends StatelessWidget {
  OrderDetailsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            border: Border.all(color: kwhite),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            const Spacer(
              flex: 1,
            ),
            Container(
              height: 115,
              width: 115,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: kwhite),
              child: Image.asset(
                'assets/images/shoe4.png',
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(),
                Text(
                  'NIKE',
                  style: TextStyle(
                      color: kwhite, fontWeight: FontWeight.bold, fontSize: 17),
                ),
                SizedBox(
                  width: 200,
                  // color: Colors.red,
                  child: Text(
                    'Order Id : 150860646464',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: kwhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
                Text(
                  'Quandity : 1',
                  style: TextStyle(
                      color: kwhite, fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  '₹ 3258',
                  style: TextStyle(
                      color: kwhite, fontWeight: FontWeight.bold, fontSize: 17),
                ),
                SizedBox()
              ],
            ),
            const Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
