import 'package:flutter/material.dart';

import '../const.dart';

Widget textField(hintText, keyboardType, String? Function(String?)? validator,
    {TextEditingController? controller}) {
  return TextFormField(
    controller: controller,
    validator: validator,
    keyboardType: keyboardType,
    decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
        // ignore: prefer_const_constructors
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        ),
        fillColor: grey),
  );
}
