import 'package:flutter/material.dart';
import 'package:partner_qsd/util/const.dart';
import 'package:partner_qsd/util/widgets/button.dart';
import 'package:partner_qsd/util/widgets/textfield.dart';

class PanBankGstDetails extends StatefulWidget {
  const PanBankGstDetails({Key? key}) : super(key: key);

  @override
  _PanBankGstDetailsState createState() => _PanBankGstDetailsState();
}

class _PanBankGstDetailsState extends State<PanBankGstDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: mainColor,
        ),
        backgroundColor: white,
        title: customText('GST, PAN and Bank Details', black, 18),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText(' PAN Details', grey, 18),
            const SizedBox(
              height: 10,
            ),
            textField('PAN Number', TextInputType.number, (val) {}),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            customText(' GST Details', grey, 18),
            const SizedBox(
              height: 10,
            ),
            textField('GST', TextInputType.none, (val) {}),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            customText(' Bank Details', grey, 18),
            const SizedBox(
              height: 10,
            ),
            textField('Bank Account No.', TextInputType.number, (val) {}),
            const SizedBox(
              height: 20,
            ),
            textField('IFSC Code', TextInputType.number, (val) {}),
            const SizedBox(
              height: 20,
            ),
            textField('Card Holder name', TextInputType.name, (val) {}),
            const SizedBox(
              height: 20,
            ),
            button(
                text: 'Save Details',
                onPressed: () {},
                btnColor: mainColor,
                textColor: white,
                borderColor: white)
          ],
        ),
      ),
    );
  }
}
