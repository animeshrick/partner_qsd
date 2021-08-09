import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:partner_qsd/util/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:partner_qsd/util/widgets/button.dart';
import 'package:partner_qsd/view/insider/home/dashboard.dart';

class CompletedJobPage extends StatefulWidget {
  const CompletedJobPage({Key? key}) : super(key: key);

  @override
  _CompletedJobPageState createState() => _CompletedJobPageState();
}

class _CompletedJobPageState extends State<CompletedJobPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 0.25.sh,
            ),
            customText('You have completed your job!', mainColor, 35,
                fontWeight: FontWeight.bold),
            const SizedBox(
              height: 25,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(profileImg),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: customText('Bathroom cleaning', black, 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(Icons.location_on_outlined, color: grey),
                const SizedBox(
                  width: 15,
                ),
                Flexible(
                  child: customText(
                      '2972 Westheimer Rd. Santa Ana, Illinois 85486 ',
                      black,
                      18),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(Icons.watch_later_outlined, color: grey),
                const SizedBox(
                  width: 15,
                ),
                Flexible(
                  child: customText(
                      '03:00PM - 05:00PM , 21th July 2021 ', black, 18),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            button(
                text: 'Return Home',
                onPressed: () {
                  Get.off(() => const Dashboard());
                },
                btnColor: white,
                textColor: mainColor,
                borderColor: mainColor)
          ],
        ),
      ),
    );
  }
}
