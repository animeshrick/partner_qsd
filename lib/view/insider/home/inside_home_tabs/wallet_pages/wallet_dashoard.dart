import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:partner_qsd/util/const.dart';

import 'transfer_bank/credit_transfer_bank.dart';
import 'wallet_tabs/month_wallet.dart';
import 'wallet_tabs/today_wallet.dart';
import 'wallet_tabs/week_wallet.dart';

class WalletDashoard extends StatefulWidget {
  const WalletDashoard({Key? key}) : super(key: key);

  @override
  _WalletDashoardState createState() => _WalletDashoardState();
}

class _WalletDashoardState extends State<WalletDashoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: mainColor,
        height: 50,
        child: InkWell(
          onTap: () {
            Get.to(() => const CreditTransferToBank());
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_balance,
                color: white,
                size: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              customText('Transfer to Bank', white, 18,
                  fontWeight: FontWeight.bold),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: mainColor,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                (Icons.more_vert),
                color: black,
              ))
        ],
        backgroundColor: white,
        title: customText('Wallet Credit', black, 18),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Container(
              color: commonColor,
              child: TabBar(
                indicatorColor: mainColor,
                labelColor: mainColor,
                unselectedLabelColor: white,
                unselectedLabelStyle: TextStyle(color: white),
                tabs: const [
                  Text('\nToday\n'),
                  Text('\nThis Week\n'),
                  Text('\nThis Month\n'),
                ],
              ),
            ),
            const Expanded(
              flex: 3,
              child: TabBarView(
                children: [
                  TodayWallet(),
                  WeekWallet(),
                  MonthWallet(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
