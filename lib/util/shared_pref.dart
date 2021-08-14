import 'package:shared_preferences/shared_preferences.dart';

class SharePreferenceInstance {
  static SharedPreferences? prefs;

  static final SharePreferenceInstance sharepre =
      SharePreferenceInstance._internal();

  SharePreferenceInstance._internal();

  factory SharePreferenceInstance() {
    return sharepre;
  }

  //shared pref initialize
  init() async {
    prefs = await SharedPreferences.getInstance();
  }

  void clear() {
    prefs?.clear();
  }

  /* --------- keys -----------*/
  final isLoginKey = 'isLogin';

  final providerName = 'name';
  final providerEmail = 'email';
  final type = 'user_type';
  final token = 'api_token';
  final providerId = 'id';

  /* ----------------------- isLogin ----------------------*/
  void setIsLogin(value) => prefs?.setBool(isLoginKey, value);
  bool? isLogin() => prefs?.getBool(isLoginKey) ?? false;

  /* -------------- providerName -----------*/
  void setProviderName(value) => prefs?.setString(providerName, value);
  String? getProviderName() => prefs?.getString(providerName);

  /* --------------------- providerEmail -------------------*/
  void setProviderEmail(value) => prefs?.setString(providerEmail, value);
  String? getProviderEmail() => prefs?.getString(providerEmail);

  /* -------------- type ----------- */
  void setType(value) => prefs?.setString(type, value);
  String? getType() => prefs?.getString(type);

  /* --------------------- token -------------------*/
  void setToken(value) => prefs?.setString(token, value);
  String? getToken() => prefs?.getString(token);

  /* ------------------------ providerId --------------------- */
  void setProviderId(value) => prefs?.setInt(providerId, value);
  int? getProviderId() => prefs?.getInt(providerId);

  void saveProviderDetails(providerData) {
    setProviderName(providerData['name']);
    setType(providerData['user_type']);
    setProviderEmail(providerData['email']);
    setProviderId(providerData['id']);

    setToken(providerData['api_token']);
    setIsLogin(true);
    print('sp- ${sp.isLogin()}');
  }
}

SharePreferenceInstance sp = SharePreferenceInstance();
