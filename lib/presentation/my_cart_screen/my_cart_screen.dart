import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';
import 'package:sole_sphere/presentation/my_cart_screen/widgets/cart_item_counter.dart';

class MyCartScreen extends StatelessWidget {
  MyCartScreen({super.key});
  int amount = 2015;

  @override
  Widget build(BuildContext context) {
    return

        // Scaffold(
        //     backgroundColor: kblack,
        //     body:

        Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.65,
            width: double.infinity,
            // color: kred,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.width * 0.24,
                    width: double.infinity,
                    // color: Colors.grey,
                    child: Row(children: [
                      const Spacer(
                        flex: 1,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.width * 0.26,
                        width: MediaQuery.of(context).size.width * 0.26,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: kwhite,
                        ),
                        child: Center(
                          child: Container(
                            height: MediaQuery.of(context).size.width * 0.18,
                            width: MediaQuery.of(context).size.width * 0.18,
                            // color: kred,
                            child: Image.asset('assets/images/shoe2.png'),
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.width * 0.25,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nike Air Max',
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: kwhite,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '₹ 2,999.00',
                              style: TextStyle(
                                  color: kwhite,
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
                        width: MediaQuery.of(context).size.width * 0.22,
                        height: MediaQuery.of(context).size.width * 0.26,
                        // color: Colors.green,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.delete,
                              color: kred,
                              size: 32,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            CartItemCounter()
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      )
                    ]),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 15,
                  );
                },
                itemCount: 10),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: kwhite,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(
                      flex: 8,
                    ),
                    Text(
                      'Totel Cost :',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      '₹ 2,999.00',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Spacer(
                      flex: 8,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      color: kblack, borderRadius: BorderRadius.circular(40)),
                  child: Center(
                    child: Text(
                      'Checkout',
                      style: TextStyle(
                          color: kwhite,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
      // )
    );
  }
}
