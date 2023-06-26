import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sole_sphere/core/colors/colors.dart';
import 'package:sole_sphere/presentation/login_screens/sign_up_screen.dart';
import 'package:sole_sphere/presentation/login_screens/widgets/sign_in_textform_field.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
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
                  height: 120,
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
                      'LOGIN TO YOUR ACCOUNT',
                      style: TextStyle(
                          color: kwhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                SignInTextFormField(
                  // formkey: emailFormKey,
                  numkeybord: false,
                  passwordVisible: true,
                  isSuffix: false,
                  title: 'e-mail',
                  icon: Icons.email_outlined,
                  top: 20,
                ),
                SignInTextFormField(
                    passwordVisible: false,
                    // formkey: passwordFormKey,
                    numkeybord: false,
                    isSuffix: true,
                    top: 20,
                    icon: Icons.lock,
                    title: 'Password'),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    // if (emailFormKey.currentState!.validate() &&

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
                        'Sign In',
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
                    Text("Don't have an account?",
                        style: TextStyle(
                            color: kwhite,
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                    Spacer(
                      flex: 1,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(CupertinoPageRoute(
                          builder: (context) => SignUpScreen(),
                        ));
                      },
                      child: Text(
                        "Sign Up",
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
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Forgotten Password?",
                  style: TextStyle(
                      color: kwhite, fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: kwhite),
                        color: kwhite,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Spacer(
                          flex: 2,
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          // color: kblack,
                          child: Center(
                            child: Image.asset(
                              'assets/images/googlelogo.png',
                              fit: BoxFit.cover,
                              scale: 20,
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            // color: kblack,
                          ),
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        Text(
                          'Sign in with Google',
                          style: TextStyle(
                              color: kblack,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                        Spacer(
                          flex: 8,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
