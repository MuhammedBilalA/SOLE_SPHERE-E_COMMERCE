import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sole_sphere/application/sign_in/sign_in_notifier.dart';
import 'package:sole_sphere/core/colors/colors.dart';

class SignInTextFormField extends StatelessWidget {
  SignInTextFormField(
      {super.key,
      // required this.formkey,
      required this.top,
      required this.icon,
      this.isSuffix = false,
      required this.passwordVisible,
      required this.numkeybord,
      required this.controller,
      required this.title,
      this.onPressed});
  double top;
  String title;
  IconData icon;
  bool isSuffix;
  bool passwordVisible;
  bool numkeybord;
  void Function()? onPressed;
  // GlobalKey formkey;
  TextEditingController controller;

  // final GlobalKey<FormState> formkey;
  @override
  Widget build(BuildContext context) {
    // final passvisibleNotifier = Provider.of<SigninNotifier>(context);
    return Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: top),
        child: TextFormField(
          controller: controller,
          keyboardType: (numkeybord) ? TextInputType.number : TextInputType.emailAddress,
          obscureText: (isSuffix) ? passwordVisible : false,
          // expands: true,
          // maxLines: 1,
          style: const TextStyle(color: kwhite),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'please enter the ${title.toLowerCase()}';
            }
            return null;
          },
          // controller: brandNameControllor,
          cursorColor: kwhite,
          decoration: InputDecoration(
            suffixIcon: (isSuffix)
                ? IconButton(
                    icon: Icon(
                      // Based on passwordVisible state choose the icon
                      passwordVisible ? Icons.visibility : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: onPressed)
                : const SizedBox(),

            prefixIcon: Icon(
              icon,
              color: kwhite,
            ),
            label: Text(
              '$title',
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
        ));
  }
}
