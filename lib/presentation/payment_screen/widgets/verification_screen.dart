import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sole_sphere/core/colors/colors.dart';
import 'package:sole_sphere/presentation/login_screens/widgets/sign_in_textform_field.dart';
import 'package:sole_sphere/presentation/nav_bar/nav_bar.dart';


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
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: kwhite,
            )),
        // elevation: 2,
        centerTitle: true,
        title: const Text(
          'Payment Method',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.75,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '456',
                      style: GoogleFonts.lobster(
                          fontSize: 40, color: Colors.green, fontWeight: FontWeight.w400),
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
                decoration: const BoxDecoration(
                    color: kwhite,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                child: InkWell(
                  onTap: () {
                    // Navigator.of(context).push(CupertinoPageRoute(
                    //   builder: (context) => VerificationScreen(),
                    // ));

                    if (_formkey.currentState!.validate() && confirmationController.text == '456') {
                      successPopUp(context);
                    }
                  },
                  child: Center(
                    child: Container(
                      width: 280,
                      height: 60,
                      decoration:
                          BoxDecoration(color: kblack, borderRadius: BorderRadius.circular(40)),
                      child: const Center(
                        child: Text(
                          'CONFIRM ORDER',
                          style:
                              TextStyle(color: kwhite, fontSize: 20, fontWeight: FontWeight.w900),
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
          shape:
              const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.0))),
          // contentPadding: EdgeInsets.only(top: 10.0),
          title: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: const Center(
                child: Text(
                  ' Order Successfull',
                  style: TextStyle(color: kblack, fontWeight: FontWeight.bold, fontSize: 23),
                ),
              ),
            ),
          ),
          content: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.3,
              child: LottieBuilder.asset(
                'assets/lotties/91001-success.json',
                repeat: false,
                height: 200,
                width: 200,
              )),
          actions: [
            Center(
                child: Column(
              children: [
                const Text(
                  'For more details,',
                  style: TextStyle(color: kblack, fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Check Delivery Status',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                ElevatedButton(
                    style:
                        const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          CupertinoPageRoute(builder: (context) => NavBar()),
                          (Route<dynamic> route) => false);
                    },
                    child: const Text(
                      'OK',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ))
              ],
            ))
          ],
        );
      },
    );
  }
}
