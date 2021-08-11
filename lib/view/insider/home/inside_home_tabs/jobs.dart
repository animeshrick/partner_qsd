import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:partner_qsd/util/const.dart';
import 'package:partner_qsd/util/widgets/button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:partner_qsd/view/insider/home/inside_home_tabs/page_details/details_job.dart';

class Jobs extends StatefulWidget {
  const Jobs({Key? key}) : super(key: key);

  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button1(
                      text: 'Pending',
                      onPressed: () {},
                      btnColor: isSelected == false ? mainColor : white,
                      textColor: isSelected == false ? white : mainColor,
                      borderColor: isSelected == false ? white : mainColor),
                  button1(
                      text: 'Ongoing',
                      onPressed: () {},
                      btnColor: isSelected == false ? mainColor : white,
                      textColor: isSelected == false ? white : mainColor,
                      borderColor: isSelected == false ? white : mainColor),
                  button1(
                      text: 'Completed',
                      onPressed: () {},
                      btnColor: mainColor,
                      textColor: white,
                      borderColor: white),
                ],
              ),
              ListView.separated(
                primary: false,
                shrinkWrap: true,
                separatorBuilder: (_, __) => const SizedBox(
                  height: 10,
                ),
                itemCount: 2,
                itemBuilder: (_, __) {
                  return Card(
                      elevation: 5,
                      margin: const EdgeInsets.fromLTRB(18, 10, 18, 0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                customText('Bathroom cleaning', black, 18,
                                    fontWeight: FontWeight.bold),
                                customText('\$40', mainColor, 18),
                              ],
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
                                      '03:00PM - 05:00PM , 21th July 2021 ',
                                      black,
                                      18),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 42,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Status : ',
                                      style: TextStyle(color: black)),
                                  const TextSpan(
                                      text: 'Pending',
                                      style: TextStyle(
                                          color: Colors.pinkAccent)),
                                ],
                              ),
                              textScaleFactor: 0.5,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              margin: const EdgeInsets.all(10),
                              height: 145,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(mapImg),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 0.3.sw,
                                  height: 0.06.sh,
                                  child: button1(
                                      borderColor: Colors.pinkAccent,
                                      btnColor: white,
                                      onPressed: () {},
                                      text: 'Decline',
                                      textColor: Colors.pinkAccent),
                                ),
                                SizedBox(
                                  width: 0.3.sw,
                                  height: 0.06.sh,
                                  child: button1(
                                      borderColor: white,
                                      btnColor: green,
                                      onPressed: () =>
                                          Get.to(() => const JobsDetails()),
                                      text: 'Accept',
                                      textColor: white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ));
                },
              ),
            ],
          ),
        ));
  }
}
