// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:partner_qsd/util/const.dart';
import 'package:partner_qsd/util/widgets/button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: mainColor,
        ),
        title: customText('Sign Up', black, 18),
        backgroundColor: white,
      ),
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Column(
              children: [
                // Align(
                //   alignment: Alignment.topRight,
                //   child: IconButton(
                //       icon: Icon(
                //         Icons.close_outlined,
                //         color: white,
                //       ),
                //       onPressed: () => Get.back()),
                // ),
                Align(
                    alignment: Alignment.topLeft,
                    child: customText("Enter OTP", black, 20,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 30,
                ),
                PinCodeTextField(
                  cursorColor: mainColor,
                  appContext: context,
                  length: 4,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 50,
                      activeFillColor: Colors.black12,
                      inactiveColor: Colors.black12,
                      activeColor: Colors.black12,
                      selectedColor: Colors.black12,
                      selectedFillColor: Colors.black12,
                      inactiveFillColor: Colors.white30),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    // print(value);
                    setState(() {
                      //currentText = value;
                    });
                  },
                  beforeTextPaste: (text) {
                    // print("Allowing to paste $text");
                    return true;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                button(
                    borderColor: white,
                    btnColor: mainColor,
                    onPressed: () {},
                    text: 'Sign Up',
                    textColor: white),
                const SizedBox(
                  height: 30,
                ),
                customUnderlineText('Resend OTP', grey, 18),
                SizedBox(
                  height: 0.1.sh,
                ),
                customRichText('Already member? ', 'Sign In', ''),
              ],
            )),
      ),
    );
  }
}
