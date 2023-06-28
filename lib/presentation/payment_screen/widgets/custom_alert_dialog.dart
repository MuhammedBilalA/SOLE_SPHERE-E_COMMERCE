

import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';

class CustomAlertDialog extends StatelessWidget {
  final Widget content;
  final List<Widget>? actions;

  CustomAlertDialog({required this.content, this.actions});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.all(0),
      iconPadding: EdgeInsets.all(0),
      titlePadding: EdgeInsets.all(0),
      buttonPadding: EdgeInsets.all(0),
      actionsPadding: EdgeInsets.all(0),
      contentPadding: EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      content: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width * 0.80,
        decoration: BoxDecoration(
          color: kblack,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: kwhite,
            width: 1.0,
          ),
        ),
        child: content,
      ),
      actions: actions,
    );
  }
}
