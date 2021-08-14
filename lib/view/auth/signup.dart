import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:partner_qsd/api/api_call.dart';
import 'package:partner_qsd/util/const.dart';
import 'package:partner_qsd/util/widgets/button.dart';
import 'package:partner_qsd/util/widgets/textfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:partner_qsd/view/auth/sign_in.dart';
import 'enter_phone_number.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isHidden = true;
  TextEditingController userNameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController confPasswordCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
  //     _registerNewUser();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: mainColor,
        ),
        title: customText('Sign Up', black, 18),
        backgroundColor: white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText('Create Account', black, 18,
                    fontWeight: FontWeight.bold),
                const SizedBox(
                  height: 15,
                ),
                textField('Username', TextInputType.emailAddress, (value) {
                  if (value!.trim().isEmpty) {
                    return "Enter Username";
                  }
                }, controller: userNameCtrl),
                const SizedBox(
                  height: 15,
                ),
                textField('E-mail', TextInputType.emailAddress, (value) {
                  if (value!.trim().isEmpty) {
                    return "Enter E-mail";
                  }
                }, controller: emailCtrl),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passwordCtrl,
                  autofocus: false,
                  obscureText: isHidden,
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return "Enter password";
                    } else if (value.length < 5) {
                      return "Password should be more than 5 characters";
                    }
                  },
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            isHidden = !isHidden;
                          });
                        },
                        child: Icon(isHidden
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    hintText: 'Password',
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: confPasswordCtrl,
                  autofocus: false,
                  obscureText: isHidden,
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return "Enter Confirm Password password ";
                    } else if (passwordCtrl.text != value) {
                      return "Password does not match";
                    }
                  },
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            isHidden = !isHidden;
                          });
                        },
                        child: Icon(isHidden
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    hintText: 'Confirm Password',
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                button(
                    borderColor: white,
                    btnColor: mainColor,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   const SnackBar(content: Text('Processing Data')),
                        // );
                        _registerNewUser();
                      }
                    },
                    text: 'Sign Up',
                    textColor: white),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Divider(),
                    customText('OR', grey, 16),
                    const Divider(),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                textIconButton(
                    icon: Icons.phone,
                    onTap: () {
                      Get.to(() => const EnterPhoneNumber());
                    },
                    text: 'Sign Up with Phone No.',
                    btnColor: textColor,
                    textColor: white),
                const SizedBox(
                  height: 15,
                ),
                svgButton(
                    img: fb,
                    onTap: () {},
                    text: 'Sign Up with Facebook',
                    btnColor: fbBtn,
                    textColor: white,
                    borderColor: white),
                const SizedBox(
                  height: 15,
                ),
                svgButton(
                    img: google,
                    onTap: () {},
                    text: 'Sign Up with Google',
                    btnColor: white,
                    textColor: black,
                    borderColor: black),
                SizedBox(
                  height: 0.05.sh,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => const Login());
                  },
                  child: Center(
                      child:
                          customRichText('Already a member? ', 'Sign In', '')),
                ),
                SizedBox(
                  height: 0.1.sh,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _registerNewUser() async {
    print('');
    showProgress(context);
    var res = await networkcallService.customerRegister(
        confPassword: confPasswordCtrl.text,
        email: emailCtrl.text,
        password: passwordCtrl.text,
        userName: userNameCtrl.text);
    hideProgress(context);
    if (res) Get.off(() => const Login());
  }
}
