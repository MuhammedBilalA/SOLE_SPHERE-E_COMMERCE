import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';
import 'package:sole_sphere/presentation/track_order_screen/track_order_screen.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return

        // Scaffold(
        //     backgroundColor: kblack,
        //     body:
        Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => TrackOrder(),
                ));
              },
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kwhite, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const Spacer(
                      flex: 3,
                    ),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.2,
                      // color: Colors.green,
                      child: Center(
                          child: SizedBox(
                              height: 60,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: Image.asset('assets/images/shoe2.png'))),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Container(
                      height: double.infinity,
                      width: MediaQuery.of(context).size.width * 0.5,
                      // color: kred,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(
                          //   height: 22,
                          // ),
                          Text(
                            'Nike Air Max',
                            style: TextStyle(
                                color: kblack,
                                fontSize: 20,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Order Placed',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Container(
                      height: double.infinity,
                      width: MediaQuery.of(context).size.width * 0.2,
                      // color: Colors.green,
                      child: const Icon(
                        Icons.delete,
                        color: kred,
                        size: 30,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: 4),
      // )
    );
  }
}
