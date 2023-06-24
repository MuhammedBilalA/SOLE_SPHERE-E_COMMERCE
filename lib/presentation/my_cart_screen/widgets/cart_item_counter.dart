import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';

class CartItemCounter extends StatelessWidget {
  CartItemCounter({
    super.key,
  });

  int _count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.22,
      height: MediaQuery.of(context).size.width * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kwhite,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              _count = _count - 1;
              _counterNotifier.notifyListeners();
            },
            child: const Icon(
              Icons.remove,
              color: kblack,
            ),
          ),
          ValueListenableBuilder(
            valueListenable: _counterNotifier,
            builder: (context, value, child) => Text(
              _count.toString(),
              style: TextStyle(
                  color: kblack, fontSize: 16, fontWeight: FontWeight.w900),
            ),
          ),
          InkWell(
            onTap: () {
              _count = _count + 1;
              _counterNotifier.notifyListeners();
            },
            child: const Icon(
              Icons.add,
              color: kblack,
            ),
          )
        ],
      ),
    );
  }
}

ValueNotifier _counterNotifier = ValueNotifier([]);
