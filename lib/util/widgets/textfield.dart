import 'package:flutter/material.dart';

import '../const.dart';

Widget textField(hintText, keyboardType, String? Function(String?)? validator,) {
  return TextFormField(
    validator: validator,
    keyboardType: keyboardType,
    decoration: InputDecoration(
        hintText: hintText,
        // ignore: prefer_const_constructors
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        ),
        fillColor: grey),
  );
}
