import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';
import 'package:sole_sphere/core/colors/colors.dart';
import 'package:sole_sphere/presentation/track_order_screen/track_order_screen.dart';
import 'package:sole_sphere/presentation/widgets/question_popup.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      //All Orders
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
                child: OrderTile(
                    ontap: () {
                      questionPopUp(
                          function: () {
                            Navigator.pop(context);
                            cancelSuccessPopUp(context);
                          },
                          context: context,
                          title: 'Are you sure you want to cancel this order',
                          yes: 'Yes',
                          no: 'No');
                    },
                    icon: const Icon(
                      Icons.delete_forever_outlined,
                      color: kred,
                      size: 34,
                    ),
                    title: 'Nike Air Max',
                    subtitle: 'Order Placed'),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: 4),
        // )
      ),
      // Pending Orders
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
                  child: OrderTile(
                    icon: const Icon(
                      Icons.info_outline,
                      color: Color.fromARGB(255, 255, 136, 0),
                      size: 30,
                    ),
                    title: 'Nike Air Max',
                    subtitle: 'Order Processing...',
                    ontap: () {
                      orderProcess(context);
                    },
                  ));
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: 4),
        // )
      ),
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
                child: OrderTile(
                    ontap: () {
                      questionPopUp(
                          function: () {
                            showDialog(
                              context: context,
                              builder: (context) => Center(
                                child: Container(
                                  height: 350,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: kwhite,
                                  ),
                                  child: Center(
                                    child: LottieBuilder.asset(
                                        'assets/lotties/87669-delete-animation.json',
                                        height: 250,
                                        width: 250,
                                        fit: BoxFit.cover,
                                        repeat: false, onLoaded: (p0) async {
                                      Future.delayed(Duration(milliseconds: 1500), () {
                                        Navigator.pop(context);
                                        Navigator.pop(context);
                                      });
                                    }),
                                  ),
                                ),
                              ),
                            );
                          },
                          context: context,
                          title: 'Are you sure you want to remove ?',
                          yes: 'Yes',
                          no: 'No');
                    },
                    icon: Icon(
                      Icons.delete_sweep,
                      color: kred,
                      size: 30,
                    ),
                    title: 'Nike Air Max',
                    subtitle: 'Order Cancelled'),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: 4),
        // )
      ),
    ]);
  }

  Future<dynamic> orderProcess(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => Center(
              child: Container(
                decoration: BoxDecoration(color: kwhite, borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoadingAnimationWidget.discreteCircle(
                        color: const Color.fromARGB(255, 255, 234, 0), size: 40),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Your request under process',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ));
  }

  Future<dynamic> cancelSuccessPopUp(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.0))),
          // contentPadding: EdgeInsets.only(top: 10.0),
          title: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.6,
              // color: kblack,
              child: const Center(
                child: Text(
                  'Cancellation Pending',
                  style: TextStyle(color: kblack, fontWeight: FontWeight.bold, fontSize: 23),
                ),
              ),
            ),
          ),
          content: LottieBuilder.asset(
            'assets/lotties/141058-processing.json',
            fit: BoxFit.cover,
            // width: double.infinity,
          ),
          actions: [
            Center(
                child: Column(
              children: [
                const Text(
                  'For more details,',
                  style: TextStyle(color: kblack, fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Check Pending Orders',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                ElevatedButton(
                    style:
                        const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
                    onPressed: () {
                      // Navigator.of(context).pushAndRemoveUntil(
                      //     CupertinoPageRoute(builder: (context) => NavBar()),
                      //     (Route<dynamic> route) => false);
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'OK',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ))
              ],
            ))
          ],
        );
      },
    );
  }
}

class OrderTile extends StatelessWidget {
  const OrderTile(
      {super.key, required this.icon, this.ontap, required this.title, required this.subtitle});
  final Widget icon;
  final String title;
  final String subtitle;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(color: kwhite, borderRadius: BorderRadius.circular(10)),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(
                //   height: 22,
                // ),
                Text(
                  title,
                  style: const TextStyle(color: kblack, fontSize: 20, fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                      color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w600),
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
            child: InkWell(onTap: ontap, child: icon),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
