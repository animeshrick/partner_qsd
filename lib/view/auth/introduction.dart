// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:partner_qsd/util/const.dart';
import 'package:partner_qsd/util/widgets/button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:partner_qsd/view/insider/home/dashboard.dart';
import 'package:partner_qsd/view/insider/profession_choose.dart';

import 'sign_in.dart';
import 'signup.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              height: 0.8.sh,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(bg),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 15, 0),
                      child: customInkWellText(() {
                        Get.to(() => const ProfessionChoose());
                      }, 'Skip', textColor, 16),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  customText('Become a partner', textColor, 55),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                          backgroundImage: const AssetImage(circle),
                          backgroundColor: white,
                          child: customText(' 1 ', white, 18,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: customText(
                            'It is a long established fact that a reader will be distracted by the readable content ',
                            textColor,
                            16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                          backgroundImage: const AssetImage(circle),
                          backgroundColor: white,
                          child: customText('2', white, 18,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: customText(
                            'It is a long established fact that a reader will be distracted by the ',
                            textColor,
                            16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                          backgroundImage: const AssetImage(circle),
                          backgroundColor: white,
                          child: customText('3', white, 18,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: customText(
                            'It is a long established fact that a reader will be distracted',
                            textColor,
                            16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  button(
                      onPressed: () {
                        Get.to(() => const Signup());
                      },
                      text: 'Sign Up',
                      btnColor: mainColor,
                      textColor: white,
                      borderColor: white),
                  const SizedBox(
                    height: 15,
                  ),
                  button(
                      onPressed: () {
                        Get.to(() => const Login());
                      },
                      text: 'Log In',
                      btnColor: white,
                      textColor: mainColor,
                      borderColor: mainColor),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
