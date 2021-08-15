import 'dart:convert';
import 'dart:io';
import 'package:partner_qsd/model/auth_models/login_model.dart';
import 'package:partner_qsd/model/auth_models/register_model.dart';
import 'package:partner_qsd/model/category_models/category_model.dart';
import 'package:partner_qsd/util/const.dart';
import 'package:partner_qsd/util/shared_pref.dart';
import 'my_client.dart';

class Networkcall {
  static final Networkcall networkcall = Networkcall._internal();

  Networkcall._internal();

  factory Networkcall() {
    return networkcall;
  }

  /* --------------- choose profession [category] -----------*/
  Future<List<CategoriesData>?> getProfessionCat() async {
    final response = await MyClient().get(Uri.parse(categories));
    final resp = jsonDecode(response.body);
    // ignore: avoid_print
    print('$categories $resp');
    try {
      if (response.statusCode == 200) {
        final myResponse = CategoriesModel.fromJson(resp);
        if (myResponse.status == success) {
          // showToast(myResponse.data, green);
          return myResponse.catData;
        } else {
          return myResponse.catData;
        }
      } else {
        var error = resp['errors'] as Map;
        showToast(error.values.first[0].toString(), red);
        return [];
      }
    } on SocketException {
      showToast(internetError, red);
      throw internetError;
    }
  }

  /// ------------- partner register ------------------
  Future<bool> customerRegister({
    required String email,
    required String userName,
    required String password,
    required String confPassword,
  }) async {
    Map<String, dynamic> data = {
      'email': email,
      'userName': userName,
      'password': password,
      'confirmPassword': confPassword,
    };
    final response = await MyClient().post(Uri.parse(register), body: data);
    final resp = jsonDecode(response.body);
    // ignore: avoid_print
    print('$register --> $data = $resp');

    try {
      if (response.statusCode == 200) {
        final myResponse = RegisterModel.fromJson(resp);
        if (myResponse.status == success) {
          sp.saveProviderDetails(resp['data']);
          showToast(myResponse.message, green);
          return true;
        } else {
          return false;
        }
      } else {
        var error = resp['errors'] as Map;

        //print(error.values.first[0]);
        showToast(error.values.first[0].toString(), red);
        return false;
      }
    } on SocketException {
      showToast(internetError, red);
      return false;
    }
  }

  /// ------------- partner login ------------------
  Future<bool> partnerLogin({
    required String email,
    required String password,
  }) async {
    Map<String, dynamic> data = {
      'email': email,
      'password': password,
    };
    final response = await MyClient().post(Uri.parse(login), body: data);
    final resp = jsonDecode(response.body);
    // ignore: avoid_print
    print('$login --> $data = $resp');

    try {
      if (response.statusCode == 200) {
        final myResponse = LoginModel.fromJson(resp);
        if (myResponse.status == success) {
          sp.saveProviderDetails(resp['data']);
          showToast('Login done successfully', green);
          return true;
        } else {
          return false;
        }
      } else {
        var error = resp['errors'] as Map;
        showToast(error.values.first[0].toString(), red);
        return false;
      }
    } on SocketException {
      showToast(internetError, red);
      return false;
    }
  }
}

class Final {}

Networkcall networkcallService = Networkcall();
