import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sole_sphere/core/colors/colors.dart';
import 'package:sole_sphere/presentation/payment_screen/payment_screen.dart';
import 'package:sole_sphere/presentation/product_details_screen/widgets/size_tile.dart';

class ProductDetailsScreen extends StatefulWidget {
  ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        backgroundColor: kwhite,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: kblack,
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
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.74,
            // color: kred,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 250,
                    color: kwhite,
                    child: Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        // color: kblack,
                        child: Image.asset('assets/images/shoe2.png'),
                      ),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // color: kred,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 20, bottom: 10),
                            child: Text(
                              "Nike Air Jordhan",
                              style: TextStyle(
                                  color: kwhite,
                                  overflow: TextOverflow.clip,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 10, top: 20, bottom: 10),
                          child: Icon(
                            Icons.shopping_cart_checkout_rounded,
                            color: kwhite,
                            size: 28,
                          ),
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      // color: kred,
                      child: Row(
                        children: [
                          Shimmer.fromColors(
                            baseColor:
                                Color.fromARGB(255, 4, 199, 30).withOpacity(.9),
                            highlightColor: Color.fromARGB(255, 255, 255, 255),
                            child: Text(
                              '85% off',
                              style: TextStyle(
                                  color: Colors.green,
                                  // decorationThickness: 1.8,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Text(
                            '₹ 4,599.00',
                            style: TextStyle(
                                color: Color.fromARGB(255, 193, 189, 189),
                                decoration: TextDecoration.lineThrough,
                                decorationColor: kred,
                                decorationThickness: 1.8,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Shimmer.fromColors(
                            baseColor: kwhite,
                            highlightColor: Color.fromARGB(255, 252, 2, 2),
                            child: Text(
                              '₹ 3,544.00',
                              style: TextStyle(
                                  // color: Colors.green,
                                  // decorationThickness: 1.8,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                          Spacer(
                            flex: 15,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      // height: double.infinity,
                      // color: kred,
                      child: Text(
                        "dable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the lik",
                        style: TextStyle(
                            overflow: TextOverflow.fade,
                            color: Color.fromARGB(255, 193, 192, 192),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  // Wrap(
                  //   spacing: 5.0,
                  //   children: List<Widget>.generate(
                  //     3,
                  //     (int index) {
                  //       return Transform(
                  //         transform: new Matrix4.identity()..scale(.99),
                  //         child: ChoiceChip(
                  //           shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(100)),
                  //           label: Text('4$index'),
                  //           selected: _value == index,
                  //           selectedColor: kred,
                  //           onSelected: (bool selected) {
                  //             setState(() {
                  //               _value = selected ? index : null;
                  //             });
                  //           },
                  //         ),
                  //       );
                  //     },
                  //   ).toList(),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 15),
                    child: Text(
                      'Select the size',
                      style: TextStyle(
                          color: kwhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  Container(
                    height: 85,
                    width: double.infinity,
                    // color: kred,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: SizeTile(
                              index: index,
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 10,
                          );
                        },
                        itemCount: 5),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              // height: 150,
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        '₹ 2,999.00',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Spacer(
                        flex: 8,
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  InkWell(
                    onTap: () {
                      log('jhbhsdshh');
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PayMentScreen(),
                      ));
                    },
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          color: kblack,
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                              color: kwhite,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
