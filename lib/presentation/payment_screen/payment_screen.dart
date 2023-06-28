import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sole_sphere/core/colors/colors.dart';
import 'package:sole_sphere/presentation/login_screens/widgets/sign_in_textform_field.dart';
import 'package:sole_sphere/presentation/payment_screen/widgets/address_text_formfield.dart';
import 'package:sole_sphere/presentation/payment_screen/widgets/amount_payebla_widget.dart';
import 'package:sole_sphere/presentation/payment_screen/widgets/custom_alert_dialog.dart';
import 'package:sole_sphere/presentation/payment_screen/widgets/payment_selection_widget.dart';
import 'package:sole_sphere/presentation/payment_screen/widgets/verification_screen.dart';

class PayMentScreen extends StatefulWidget {
  PayMentScreen({super.key});

  @override
  State<PayMentScreen> createState() => _PayMentScreenState();
}

class _PayMentScreenState extends State<PayMentScreen> {
  TextEditingController localArea = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  bool razorPay = true;
  bool cod = false;

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
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.73,
              // color: kred,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: kwhite, width: 1.5),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 80,
                            // color: kred,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 10, bottom: 20),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: kwhite,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Deliver to  :',
                                    style: TextStyle(
                                        color: kwhite,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) => Form(
                                                key: _formkey,
                                                child: CustomAlertDialog(
                                                  content: Column(
                                                    children: [
                                                      // Add your content here
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 35,
                                                                bottom: 20),
                                                        child: Center(
                                                          child: Text(
                                                            'ADD ADDRESS',
                                                            style: TextStyle(
                                                                color: kwhite,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                      ),
                                                      AddressTextFormField(
                                                          bottom: 0,
                                                          title: 'Local Area',
                                                          top: 10),
                                                      AddressTextFormField(
                                                          bottom: 0,
                                                          title: 'City',
                                                          top: 15),
                                                      AddressTextFormField(
                                                          bottom: 0,
                                                          title: 'Distric',
                                                          top: 15),
                                                      AddressTextFormField(
                                                          bottom: 0,
                                                          title: 'State',
                                                          top: 15),
                                                      AddressTextFormField(
                                                          bottom: 20,
                                                          title: 'Pincode',
                                                          keybordtype:
                                                              TextInputType
                                                                  .number,
                                                          top: 15),
                                                      Center(
                                                        child: ElevatedButton(
                                                            style: ButtonStyle(
                                                                backgroundColor:
                                                                    MaterialStatePropertyAll(
                                                                        kwhite)),
                                                            onPressed: () {
                                                              if (_formkey
                                                                  .currentState!
                                                                  .validate()) {}
                                                            },
                                                            child: Text(
                                                              '   Submit   ',
                                                              style: TextStyle(
                                                                  color:
                                                                      kblack),
                                                            )),
                                                      )
                                                    ],
                                                  ),
                                                  actions: [
                                                    // Add your actions here4
                                                  ],
                                                ),
                                              ));
                                    },
                                    child: Container(
                                      // width: 55,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                            color: kwhite,
                                          )),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15, right: 15),
                                          child: Text(
                                            'add',
                                            style: TextStyle(
                                                color: kwhite,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // height: double.infinity,
                              // width: double.infinity,
                              // color: kred,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, bottom: 10),
                                child: Text(
                                  "Add Location +",
                                  style: TextStyle(
                                      overflow: TextOverflow.clip,
                                      color: kwhite,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, bottom: 30, top: 20),
                    child: Text(
                      "Select the payment method you want to use.",
                      style: TextStyle(
                          overflow: TextOverflow.clip,
                          color: kwhite,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (cod == true) {
                        setState(() {
                          cod = false;
                          razorPay = true;
                        });
                      }
                    },
                    child: PaymentSelectionWidget(
                      isSelect: razorPay,
                      icon: 'assets/images/razorpay.png',
                      title: 'RAZORPAY',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(
                      'OR',
                      style: TextStyle(
                          color: kwhite,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (razorPay == true) {
                        setState(() {
                          razorPay = false;

                          cod = true;
                        });
                      }
                    },
                    child: PaymentSelectionWidget(
                      isSelect: cod,
                      icon: 'assets/images/money.png',
                      title: '    COD    ',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  AmountPayableWidget(
                    isGreen: false,
                    leading: 'Price(1 item)',
                    trialing: '₹ 3258',
                  ),
                  AmountPayableWidget(
                    isGreen: true,
                    leading: 'Delivery Charges',
                    trialing: 'FREE',
                  ),
                  AmountPayableWidget(
                    isGreen: true,
                    leading: 'Amount Payable',
                    trialing: '₹ 3258',
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.16,
              decoration: BoxDecoration(
                  color: kwhite,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(
                        flex: 8,
                      ),
                      Text(
                        'Totel Cost :',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        '₹ 3,258.00',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Spacer(
                        flex: 8,
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  InkWell(
                    onTap: () {
                      // log('jhbhsdshh');
                      // Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (context) => PayMentScreen(),
                      // ));
                    },
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(CupertinoPageRoute(
                          builder: (context) => VerificationScreen(),
                        ));
                      },
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            color: kblack,
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                          child: Text(
                            (cod) ? 'PLACE ORDER' : 'CONTINUE',
                            style: TextStyle(
                                color: kwhite,
                                fontSize: 20,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
