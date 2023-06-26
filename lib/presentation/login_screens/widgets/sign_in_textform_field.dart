import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';

class SignInTextFormField extends StatefulWidget {
  SignInTextFormField(
      {super.key,
      // required this.formkey,
      required this.top,
      required this.icon,
      required this.isSuffix,
      required this.passwordVisible,
      required this.numkeybord,
      required this.title});
  double top;
  String title;
  IconData icon;
  bool isSuffix;
  bool passwordVisible;
  bool numkeybord;
  // GlobalKey formkey;

  @override
  State<SignInTextFormField> createState() => _SignInTextFormFieldState();
}

class _SignInTextFormFieldState extends State<SignInTextFormField> {
  // final GlobalKey<FormState> formkey;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: widget.top),
      child: TextFormField(
        keyboardType: (widget.numkeybord)?TextInputType.number:TextInputType.emailAddress,
        obscureText: !widget.passwordVisible,
        // expands: true,
        // maxLines: 1,
        style: const TextStyle(color: kwhite),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'please enter the ${widget.title.toLowerCase()}';
          }
          return null;
        },
        // controller: brandNameControllor,
        cursorColor: kwhite,
        decoration: InputDecoration(
          suffixIcon: (widget.isSuffix)
              ? IconButton(
                  icon: Icon(
                    // Based on passwordVisible state choose the icon
                    widget.passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    // Update the state i.e. toogle the state of passwordVisible variable
                    setState(() {
                      widget.passwordVisible = !widget.passwordVisible;
                    });
                  },
                )
              : SizedBox(),

          prefixIcon: Icon(
            widget.icon,
            color: kwhite,
          ),
          label: Text(
            '${widget.title}',
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
    );
  }
}
