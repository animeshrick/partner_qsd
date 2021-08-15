import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:get/get.dart';
import 'package:partner_qsd/util/shared_pref.dart';
import 'package:partner_qsd/view/insider/home/dashboard.dart';

import 'util/const.dart';
import 'view/auth/introduction.dart';
import 'view/insider/profession_choose.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  sp.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        allowFontScaling: false,
        designSize: const Size(360, 690),
        builder: () => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(fontFamily: 'prompt-regular'),
              home: const SplashScreen(),
            ));
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      // print('login- ${sp.isLogin()}');
      !sp.isLogin()!
          ? Get.off(() => const Introduction())
          : Get.off(() => const ProfessionChoose());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xffffe2fb),
      child: Center(
        child: Image.asset(
          logo,
          height: 120,
          width: 120,
        ),
      ),
    );
  }
}
