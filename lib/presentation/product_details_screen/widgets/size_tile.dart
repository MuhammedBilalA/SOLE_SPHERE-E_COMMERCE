
import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';

class SizeTile extends StatefulWidget {
  SizeTile({super.key, required this.index});

  int index;

  @override
  State<SizeTile> createState() => _SizeTileState();
}

class _SizeTileState extends State<SizeTile> {
  int? sizeIndex;

  bool sizecolor = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          // if (sizecolor == false) {
          setState(() {
            if (sizecolor == false) {
              sizecolor = true;
            } else {
              sizecolor = false;
            }
          });
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: (sizecolor == false)
                ? const Color.fromARGB(255, 36, 35, 35)
                : kwhite,
          ),
          child: Center(
            child: Text(
              '4${widget.index}',
              style: TextStyle(
                  color: (sizecolor == false) ? kwhite : kblack,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}
