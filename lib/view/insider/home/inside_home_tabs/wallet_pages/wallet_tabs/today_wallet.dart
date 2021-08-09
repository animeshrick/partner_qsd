import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:partner_qsd/util/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodayWallet extends StatefulWidget {
  const TodayWallet({Key? key}) : super(key: key);

  @override
  _TodayWalletState createState() => _TodayWalletState();
}

class _TodayWalletState extends State<TodayWallet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 1.sw,
          color: commonColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customText('\$650', mainColor, 35),
              customText('Current balance', mainColor, 15),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.calendar_today, color: mainColor),
                    const SizedBox(
                      width: 15,
                    ),
                    customText('July 19, 2021', black, 21,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText('Bathroom cleaning', black, 18),
                    customText('\$52', mainColor, 20),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText('Kitchen cleaning', black, 18),
                    customText('\$502', mainColor, 20),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
