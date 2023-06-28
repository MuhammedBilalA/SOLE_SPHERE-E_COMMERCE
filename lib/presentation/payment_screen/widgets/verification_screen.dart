import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sole_sphere/core/colors/colors.dart';
import 'package:sole_sphere/presentation/login_screens/widgets/sign_in_textform_field.dart';
import 'package:sole_sphere/presentation/nav_bar/nav_bar.dart';
import 'package:sole_sphere/presentation/payment_screen/widgets/address_text_formfield.dart';

class VerificationScreen extends StatelessWidget {
  VerificationScreen({super.key});

  TextEditingController confirmationController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: kwhite,
            )),
        // elevation: 2,
        centerTitle: true,
        title: Text(
          'Payment Method',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.75,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '456',
                      style: GoogleFonts.lobster(
                          fontSize: 40,
                          color: Colors.green,
                          fontWeight: FontWeight.w400),
                    ),
                    Form(
                      key: _formkey,
                      child: SignInTextFormField(
                          top: 10,
                          icon: Icons.verified_outlined,
                          isSuffix: false,
                          passwordVisible: false,
                          numkeybord: true,
                          controller: confirmationController,
                          title: 'Enter the charectors'),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.13,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kwhite,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: InkWell(
                  onTap: () {
                    // Navigator.of(context).push(CupertinoPageRoute(
                    //   builder: (context) => VerificationScreen(),
                    // ));

                    if (_formkey.currentState!.validate() &&
                        confirmationController.text == '456') {
                      successPopUp(context);
                    }
                  },
                  child: Center(
                    child: Container(
                      width: 280,
                      height: 60,
                      decoration: BoxDecoration(
                          color: kblack,
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Text(
                          'CONFIRM ORDER',
                          style: TextStyle(
                              color: kwhite,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> successPopUp(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0))),
          // contentPadding: EdgeInsets.only(top: 10.0),
          title: Center(
            child: Container(
              width: 600,
              child: Center(
                child: Text(
                  ' Order Successfull',
                  style: TextStyle(
                      color: kblack, fontWeight: FontWeight.bold, fontSize: 23),
                ),
              ),
            ),
          ),
          content: Icon(
            Icons.verified_sharp,
            color: Colors.green,
            size: 200,
          ),
          actions: [
            Center(
                child: Column(
              children: [
                Text(
                  'For more details,',
                  style: TextStyle(
                      color: kblack, fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Check Delivery Status',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.green)),
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          CupertinoPageRoute(builder: (context) => NavBar()),
                          (Route<dynamic> route) => false);
                    },
                    child: Text(
                      'OK',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ))
              ],
            ))
          ],
        );
      },
    );
  }
}
