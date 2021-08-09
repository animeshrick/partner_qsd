import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:partner_qsd/util/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:partner_qsd/util/widgets/button.dart';

import 'completed_job.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: mainColor,
        height: 70,
        child: InkWell(
          onTap: () {
            Get.to(() => const CompletedJobPage());
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.done_rounded,
                color: white,
                size: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              customText('Complete', white, 18, fontWeight: FontWeight.bold),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            customText('Your Payment Due', black, 16),
            const SizedBox(
              height: 10,
            ),
            customText('\$210', black, 40),
          ],
        ),
      ),
    );
  }
}
