import 'package:flutter/material.dart';
import 'package:partner_qsd/util/const.dart';
import 'package:partner_qsd/util/widgets/button.dart';
import 'package:partner_qsd/util/widgets/textfield.dart';

class AccountSetting extends StatefulWidget {
  const AccountSetting({Key? key}) : super(key: key);

  @override
  _AccountSettingState createState() => _AccountSettingState();
}

class _AccountSettingState extends State<AccountSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: mainColor,
        ),
        backgroundColor: white,
        title: customText('Account settings', black, 18),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            textField('First Name ', TextInputType.none, (val) {}),
            const SizedBox(
              height: 20,
            ),
            textField('Last Name', TextInputType.none, (val) {}),
            const SizedBox(
              height: 20,
            ),
            textField('E-mail address', TextInputType.emailAddress, (val) {}),
            const SizedBox(
              height: 20,
            ),
            textField('Phone Number', TextInputType.number, (val) {}),
            const SizedBox(
              height: 20,
            ),
            textField('Password', TextInputType.none, (val) {}),
            const SizedBox(
              height: 20,
            ),
            button(
                text: 'Save Changes',
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
