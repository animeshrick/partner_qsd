import 'package:flutter/material.dart';
import 'package:partner_qsd/util/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:partner_qsd/util/widgets/button.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: mainColor,
        height: 70,
        child: InkWell(
          onTap: () {
            // Get.to(() => const Dashboard());
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.near_me_outlined,
                color: white,
                size: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              customText('Start navigation', white, 18,
                  fontWeight: FontWeight.bold),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.fromLTRB(18, 10, 18, 0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText('Bathroom cleaning', black, 25,
                    fontWeight: FontWeight.bold),
                const SizedBox(
                  height: 15,
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Earnings : ', style: TextStyle(color: grey)),
                      TextSpan(
                          text: '\$40', style: TextStyle(color: mainColor)),
                    ],
                  ),
                  textScaleFactor: 0.6,
                ),
                const SizedBox(
                  height: 15,
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Customer Name : ',
                          style: TextStyle(color: grey)),
                      TextSpan(
                          text: 'Anonomous',
                          style: TextStyle(color: mainColor)),
                    ],
                  ),
                  textScaleFactor: 0.6,
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
                  height: 15,
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w300),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Status : ', style: TextStyle(color: black)),
                      const TextSpan(
                          text: 'Ongoing',
                          style: TextStyle(color: Colors.blueAccent)),
                    ],
                  ),
                  textScaleFactor: 0.5,
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 0.2.sh,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(mapImg),
                      fit: BoxFit.cover,
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
