import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sole_sphere/core/colors/colors.dart';
import 'package:sole_sphere/presentation/login_screens/widgets/sign_in_textform_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kblack,
        body: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                ),
                Container(
                    // color: kwhite,
                    height: 120,
                    width: 180,
                    child: Shimmer.fromColors(
                      baseColor:
                          Color.fromARGB(255, 158, 156, 156).withOpacity(.9),
                      highlightColor: Color.fromARGB(255, 255, 255, 255),
                      child: Image.asset(
                        'assets/images/solespherebagremoved.png',
                        // fit: BoxFit.cover,
                      ),
                    )),
                // SizedBox(
                //   height: 10,
                // ),
                Container(
                  height: 60,
                  width: double.infinity,
                  color: kblack,
                  child: Center(
                    child: Text(
                      'Create New Account',
                      style: TextStyle(
                          color: kwhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                SignInTextFormField(
                  // formkey: nameFormKey,
                  numkeybord: false,
                  passwordVisible: true,
                  isSuffix: false,
                  title: 'enter full name',
                  icon: Icons.person,
                  top: 20,
                ),
                SignInTextFormField(
                  // formkey: emailFormKey,
                  numkeybord: false,
                  passwordVisible: true,
                  isSuffix: false,
                  title: 'enter e-mail',
                  icon: Icons.email_outlined,
                  top: 20,
                ),
                SignInTextFormField(
                  // formkey: phoneNumberFormKey,
                  numkeybord: true,
                  passwordVisible: true,
                  isSuffix: false,
                  title: 'enter phone No',
                  icon: Icons.phone,
                  top: 20,
                ),
                SignInTextFormField(
                    passwordVisible: false,
                    numkeybord: false,
                    // formkey: passwordFormKey,
                    isSuffix: true,
                    top: 20,
                    icon: Icons.lock,
                    title: 'enter password'),

                SignInTextFormField(
                    passwordVisible: false,
                    numkeybord: false,
                    // formkey: confirmPasswordFormKey,
                    isSuffix: true,
                    top: 20,
                    icon: Icons.lock,
                    title: 'confirm password'),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    if (_formkey.currentState!.validate()) {}
                  },
                  child: Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: kwhite),
                        color: kwhite,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: kblack,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Spacer(
                      flex: 8,
                    ),
                    Text("Alredy have an account?",
                        style: TextStyle(
                            color: kwhite,
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                    Spacer(
                      flex: 1,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            color: kwhite,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(
                      flex: 8,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
