import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minicrm/helper/rounded_button.dart';
import 'package:minicrm/helper/rounded_text_field.dart';
import 'package:minicrm/screen/login/forgot_password_screen_model.dart';
import 'package:minicrm/util/resource/my_color.dart';
import 'package:minicrm/util/resource/my_dimen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ForgotPasswordScreenModel {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: size.width * 0.35,
                )),
            Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/login_bottom.png",
                  width: size.width * 0.4,
                )),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "FORGOT PASSWORD",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MyDimen.fontSizeTitle,
                        color: MyColor.kPrimaryColor),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  SvgPicture.asset(
                    "assets/icons/signup.svg",
                    height: size.height * 0.35,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  RoundedTextField(
                    hintText: "Your Email",
                    icon: Icons.email,
                    onChanged: (value) {},
                    isIconVisibility: false,
                  ),
                  RoundedButton(
                    text: "SEND",
                    press: () => sendVerificationLink(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
