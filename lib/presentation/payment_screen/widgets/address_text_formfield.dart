import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';

class AddressTextFormField extends StatelessWidget {
  AddressTextFormField(
      {super.key,
      required this.top,
      required this.bottom,
      required this.title,
      this.keybordtype});
  double top;
  double bottom;
  String title;
  TextInputType? keybordtype;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: top, bottom: bottom, left: 10, right: 10),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: 60,
        child: TextFormField(
          keyboardType: keybordtype ?? TextInputType.emailAddress,
          expands: true,
          maxLines: null,
          style: const TextStyle(color: kwhite),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'this field is requierd';
            }
            return '';
          },
          cursorColor: kwhite,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.location_on_outlined,
              color: kwhite,
            ),
            label: Text(
              title,
              style: TextStyle(color: kwhite),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: kred,
              ),
            ),

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
            // hintText: '  enter your ${title.toLowerCase()}',
            hintStyle: const TextStyle(color: kwhite),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: kwhite,
              ),
            ),
          ),
        ),
      ),
    );
  }
}