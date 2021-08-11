import 'package:flutter/material.dart';
import 'package:partner_qsd/util/const.dart';
import 'package:partner_qsd/util/widgets/button.dart';
import 'package:partner_qsd/util/widgets/textfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isHidden = true;
  TextEditingController passwordcontroller = TextEditingController();
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText('Create Account', black, 18,
                  fontWeight: FontWeight.bold),
              const SizedBox(
                height: 15,
              ),
              textField('Username', TextInputType.emailAddress, (value) {}),
              const SizedBox(
                height: 15,
              ),
              textField('E-mail', TextInputType.emailAddress, (value) {}),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: passwordcontroller,
                autofocus: false,
                obscureText: isHidden,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Valid password ";
                  } else if (value.trim().isEmpty) {
                    return "Enter Valid password";
                  }
                },
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          isHidden = !isHidden;
                        });
                      },
                      child: Icon(
                          isHidden ? Icons.visibility_off : Icons.visibility)),
                  hintText: 'Password',
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: passwordcontroller,
                autofocus: false,
                obscureText: isHidden,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Confirm Password password ";
                  } else if (value.trim().isEmpty) {
                    return "Enter Confirm Password password ";
                  }
                },
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          isHidden = !isHidden;
                        });
                      },
                      child: Icon(
                          isHidden ? Icons.visibility_off : Icons.visibility)),
                  hintText: 'Password',
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              button(
                  borderColor: white,
                  btnColor: mainColor,
                  onPressed: () {},
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
                    // Get.to(() => EnterPhoneNumber());
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
              Center(
                  child: customRichText('Already a member? ', 'Sign In', '')),
              SizedBox(
                height: 0.1.sh,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
