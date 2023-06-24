import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sole_sphere/core/colors/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10, top: 13),
        child: Column(
          children: [
            TextFormField(
                cursorColor: kwhite,
                style: const TextStyle(color: kwhite),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: kwhite,
                  ),
                  fillColor: const Color.fromARGB(255, 36, 35, 35),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: kwhite,
                      // width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: kwhite,
                      // width: 2.0,
                    ),
                  ),
                  hintText: '  Looking For Shoes',
                  hintStyle: const TextStyle(color: kwhite),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kwhite,
                    ),
                  ),
                )),
            const Padding(
              padding: EdgeInsets.only(top: 18.0, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    'Popular Shoes',
                    style: TextStyle(
                        color: kwhite,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(
                    flex: 28,
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        color: kwhite,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            Container(
              height: 85,
              width: double.infinity,
              // color: Colors.red,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(255, 36, 35, 35),
                        ),
                        child: Center(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset(
                              (index % 2 == 0)
                                  ? 'assets/images/addidaslogo.png'
                                  : 'assets/images/pumalogo.png',
                              // fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: 10),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 269,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: kwhite, borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(right: 15, top: 13, bottom: 10),
                          child: Icon(
                            Icons.favorite_border,
                            size: 30,
                          ),
                        ),
                        Container(
                          // color: Colors.red,
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
                                  padding: EdgeInsets.only(left: 7.0),
                                  child: Text(
                                    (index % 2 == 0)
                                        ? 'ADDIDAS'
                                        : 'AIR JORDHAN',
                                    style: TextStyle(
                                        color: kblack,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15),
                                  ),
                                )),
                            SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 7.0),
                                  child: Shimmer.fromColors(
                                    baseColor:
                                        const Color.fromARGB(255, 64, 0, 255)
                                            .withOpacity(.9),
                                    highlightColor: Colors.deepOrange,
                                    child: Text(
                                      (index % 2 == 0) ? '85% off' : '75% off',
                                      style: TextStyle(
                                          color: Colors.green,
                                          decorationThickness: 1.8,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 7.0),
                              child: Row(
                                children: [
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text(
                                    (index % 2 == 0)
                                        ? '₹ 3,999.00'
                                        : '₹ 4,599.00',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 61, 59, 59),
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor: Colors.red,
                                        decorationThickness: 1.8,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Shimmer.fromColors(
                                    baseColor: Color.fromARGB(255, 5, 153, 32)
                                        .withOpacity(.9),
                                    highlightColor:
                                        Color.fromARGB(255, 0, 255, 8),
                                    child: Text(
                                      (index % 2 == 0)
                                          ? '₹ 2,999.00'
                                          : '₹ 3,544.00',
                                      style: TextStyle(
                                          color: Colors.green,
                                          decorationThickness: 1.8,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Spacer(
                                    flex: 15,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ))
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
