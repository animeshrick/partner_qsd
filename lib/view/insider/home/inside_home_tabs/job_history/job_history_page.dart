import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:partner_qsd/util/const.dart';
import 'package:partner_qsd/util/widgets/button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobHistoryPage extends StatefulWidget {
  const JobHistoryPage({Key? key}) : super(key: key);

  @override
  _JobHistoryPageState createState() => _JobHistoryPageState();
}

class _JobHistoryPageState extends State<JobHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: white,
        title: customText('Job history', black, 18),
        iconTheme: IconThemeData(
          color: mainColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                          customText('Bathroom cleaning', black, 22,
                              fontWeight: FontWeight.bold),
                          const SizedBox(
                            height: 15,
                          ),
                          RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                  fontSize: 33, fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Total Cost : ',
                                    style: TextStyle(color: grey)),
                                TextSpan(
                                    text: '\$40',
                                    style: TextStyle(color: mainColor)),
                              ],
                            ),
                            textScaleFactor: 0.5,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                  fontSize: 33, fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Customer Name : ',
                                    style: TextStyle(color: grey)),
                                TextSpan(
                                    text: 'Xyz',
                                    style: TextStyle(color: mainColor)),
                              ],
                            ),
                            textScaleFactor: 0.5,
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
                                    15),
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
                                    15),
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
      ),
    );
  }
}
