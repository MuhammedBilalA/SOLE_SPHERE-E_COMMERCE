import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sole_sphere/core/colors/colors.dart';
import 'package:sole_sphere/presentation/product_details_screen/product_details_screen.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ADDIDAS',
          style: TextStyle(color: kwhite),
        ),
        // backgroundColor: kwhite,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: kwhite,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: kblack,
                size: 30,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8, top: 5),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 269,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: 6,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => ProductDetailsScreen(),
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: kwhite, borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15, top: 13, bottom: 10),
                      child: Icon(
                        Icons.favorite,
                        size: 30,
                      ),
                    ),
                    Container(
                      // color: kred,
                      height: 140,
                      width: double.infinity,
                      child: Center(
                        child: SizedBox(
                            height: 130,
                            width: 130,
                            child: Image.asset(
                              'assets/images/shoe2.png',
                            )),
                      ),
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 7.0),
                              child: Text(
                                (index % 2 == 0) ? 'ADDIDAS' : 'AIR JORDHAN',
                                style: const TextStyle(
                                    color: kblack,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15),
                              ),
                            )),
                        SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 7.0),
                              child: Shimmer.fromColors(
                                baseColor: const Color.fromARGB(255, 64, 0, 255)
                                    .withOpacity(.9),
                                highlightColor: Colors.deepOrange,
                                child: Text(
                                  (index % 2 == 0) ? '85% off' : '75% off',
                                  style: const TextStyle(
                                      color: Colors.green,
                                      // decorationThickness: 1.8,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 7.0),
                          child: Row(
                            children: [
                              const Spacer(
                                flex: 1,
                              ),
                              Text(
                                (index % 2 == 0) ? '₹ 3,999.00' : '₹ 4,599.00',
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 61, 59, 59),
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: kred,
                                    decorationThickness: 1.8,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              const Spacer(
                                flex: 1,
                              ),
                              Shimmer.fromColors(
                                baseColor: const Color.fromARGB(255, 5, 153, 32)
                                    .withOpacity(.9),
                                highlightColor:
                                    const Color.fromARGB(255, 0, 255, 8),
                                child: Text(
                                  (index % 2 == 0)
                                      ? '₹ 2,999.00'
                                      : '₹ 3,544.00',
                                  style: const TextStyle(
                                      color: Colors.green,
                                      // decorationThickness: 1.8,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              const Spacer(
                                flex: 15,
                              )
                            ],
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            );
          },
        ),
        // ),
      ),
    );
  }
}
