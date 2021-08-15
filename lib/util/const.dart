// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// ---------------------- image -------------
const String logo = 'assets/logo.png';
const String circle = 'assets/circle.png';
const String bg = 'assets/bg.png';
const String amazon = 'assets/amazon.svg';
const String gpay = 'assets/gpay.svg';
const String google = 'assets/google.svg';
const String fb = 'assets/fb.svg';

/*-------------------------custom text-------------------------*/
TextStyle customizeTextStyle(fontWeight, fontSize, fontColor) => TextStyle(
    fontWeight: fontWeight,
    wordSpacing: 3,
    color: fontColor,
    fontSize: fontSize);

Widget customText(String text, Color color, double size, {fontWeight}) {
  return Text(text,
      // overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: size, color: color, fontWeight: fontWeight));
}

Widget customInkWellText(
    Function() onTap, String text, Color color, double size,
    {fontWeight}) {
  return InkWell(
    onTap: onTap,
    child: Text(text,
        style: TextStyle(fontSize: size, color: color, fontWeight: fontWeight)),
  );
}

Widget customRichText(String _text1, _text2, _text3) => RichText(
      text: TextSpan(
        style: const TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
        children: <TextSpan>[
          TextSpan(text: _text1, style: TextStyle(color: black)),
          TextSpan(text: _text2, style: TextStyle(color: mainColor)),
          TextSpan(text: _text3, style: TextStyle(color: black))
        ],
      ),
      textScaleFactor: 0.5,
    );

Widget customUnderlineText(String text, Color color, double size,
    {fontWeight}) {
  return Text(text,
      style: TextStyle(
        decoration: TextDecoration.underline,
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
      ));
}

const mapImg = 'https://www.mapsofindia.com/maps/westbengal/Serampore.jpg';
const profileImg =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS8vU2mhzGRicyo6xA-UGQ7gS6j19Z9tXeTQ&usqp=CAU';

class Static {}

/// ------------------ color ----------------
final Color violet = Colors.purple;
final Color indigo = Colors.indigo;
final Color black = Colors.black;
final Color grey = Colors.grey;
final Color yellow = Colors.yellow;
final Color orange = Colors.orange;
final Color red = Colors.red;

final Color white = Colors.white;
final Color mainColor = Color(0xffD0719B);
final Color fbBtn = Color(0xff317EC6);
final Color textColor = Color(0xff0f1745);
final Color green = Colors.green;
final Color commonColor = Color(0xff2B0A34);

/*-------------------------Fluttertoast-------------------------*/

showToast(msg, color) => Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.SNACKBAR,
    timeInSecForIosWeb: 1,
    backgroundColor: color,
    textColor: white,
    fontSize: 16.0);

showProgress(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: CupertinoActivityIndicator(
            radius: 25,
          ),
        );
      },
      barrierDismissible: false);
}

void hideProgress(BuildContext context) {
  Navigator.pop(context);
}

String internetError = "Please check your Internet! 😢";
String success = "success";
String failed = "fail";

/* ------------------- APIs -------------------- */

String baseUrl = 'https://laravel.gowebbidemo.com/122408/public/api/v1/';

String register = baseUrl + 'provider-register';
String login = baseUrl + 'provider-login';
String categories = baseUrl + 'get-categories';
String subCategories = baseUrl + 'get-sub-categories';
