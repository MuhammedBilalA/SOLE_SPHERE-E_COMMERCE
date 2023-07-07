import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sole_sphere/application/search/search_notifier.dart';
import 'package:sole_sphere/core/colors/colors.dart';
import 'package:sole_sphere/presentation/home_screen/widgets/brand_screen.dart';
import 'package:sole_sphere/presentation/product_details_screen/product_details_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final searchData = Provider.of<SearchNotifier>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10, top: 13),
      child: Column(
        children: [
          TextFormField(
              onChanged: (value) {
                // setState(() {});
                searchData.searchChange();
              },
              controller: searchController,
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
          (searchController.text.isEmpty)
              ? BrandProductListHomeScreen()
              : Expanded(
                  child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 260,
                      width: double.infinity,
                      // color: Colors.green,
                      child: Row(
                        children: [
                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width * 0.31,
                            // color: Colors.yellow,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 130,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20), color: kwhite),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/images/shoe4.png',
                                        scale: 6,
                                        // fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 42,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: kred, width: 1.5)),
                                    child: Center(
                                        child: Text(
                                      "₹ 3,999.00",
                                      style: TextStyle(color: kwhite, fontWeight: FontWeight.bold),
                                    )),
                                  )
                                ]),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                // color: Colors.greenAccent,
                                height: 200,
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 50,
                                      // color: kred,
                                      child: Text(
                                        'Addidas Advantage BASE ',
                                        style: TextStyle(
                                            overflow: TextOverflow.fade,
                                            color: kwhite,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                                        style: TextStyle(
                                            overflow: TextOverflow.fade,
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Container(
                        height: 0.5,
                        width: double.infinity,
                        color: kwhite,
                      ),
                    );
                  },
                )),
        ],
      ),
      // ),
    );
  }
}

class BrandProductListHomeScreen extends StatelessWidget {
  const BrandProductListHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
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
                  style: TextStyle(color: kwhite, fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Spacer(
                  flex: 28,
                ),
                Text(
                  'See All',
                  style: TextStyle(color: kwhite, fontSize: 15, fontWeight: FontWeight.bold),
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
            // color: kred,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BrandScreen(),
                        ));
                      },
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
          StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('solesphere')
                  .doc('admin')
                  .collection('products')
                  .snapshots(),
              builder: (context, snapshot) {
                return (snapshot.hasData)
                    ? Expanded(
                        child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 269,
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          itemCount: snapshot.data!.docs.length,
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
                                        Icons.favorite_border,
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
                                            child: Image(
                                                image: NetworkImage(
                                                    snapshot.data!.docs[index]['image1']))),
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
                                                snapshot.data!.docs[index]['productName'],
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
                                                baseColor: const Color.fromARGB(255, 64, 0, 255)
                                                    .withOpacity(.9),
                                                highlightColor: Colors.deepOrange,
                                                child: Text(
                                                  '${snapshot.data!.docs[index]['offerPercentage']}% off',
                                                  style: TextStyle(
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
                                              Spacer(
                                                flex: 1,
                                              ),
                                              Text(
                                                '₹ ${snapshot.data!.docs[index]['realPrice']}.00',
                                                style: TextStyle(
                                                    color: Color.fromARGB(255, 61, 59, 59),
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
                                                baseColor:
                                                    Color.fromARGB(255, 5, 153, 32).withOpacity(.9),
                                                highlightColor: Color.fromARGB(255, 0, 255, 8),
                                                child: Text(
                                                  '₹ ${snapshot.data!.docs[index]['offerPrice']}.00',
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      // decorationThickness: 1.8,
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
                              ),
                            );
                          },
                        ),
                      )
                    : Center(
                        child: LoadingAnimationWidget.waveDots(
                          color: Colors.white,
                          size: 45,
                        ),
                      );
              }),
        ],
      ),
    );
  }
}
