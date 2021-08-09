import 'package:flutter/material.dart';
import 'package:partner_qsd/util/const.dart';
import 'package:partner_qsd/util/widgets/button.dart';
import 'package:partner_qsd/util/widgets/textfield.dart';

class CreditTransferToBank extends StatefulWidget {
  const CreditTransferToBank({Key? key}) : super(key: key);

  @override
  _CreditTransferToBankState createState() => _CreditTransferToBankState();
}

class _CreditTransferToBankState extends State<CreditTransferToBank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: mainColor,
        ),
        title: customText('Transfer to Bank', black, 18),
        backgroundColor: white,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        child: Column(
          children: [
            textField('Amount', TextInputType.number, (val) {}),
            const SizedBox(
              height: 10,
            ),
            textField('Account No.', TextInputType.number, (val) {}),
            const SizedBox(
              height: 10,
            ),
            textField('IFSC Code', TextInputType.number, (val) {}),
            const SizedBox(
              height: 10,
            ),
            textField('Card Holder name', TextInputType.name, (val) {}),
            const SizedBox(
              height: 25,
            ),
            button(
                text: 'Transfer',
                onPressed: () {},
                btnColor: mainColor,
                textColor: white,
                borderColor: white),
          ],
        ),
      ),
    );
  }
}
