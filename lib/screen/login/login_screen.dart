import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minicrm/helper/action_text.dart';
import 'package:minicrm/helper/rounded_button.dart';
import 'package:minicrm/helper/rounded_text_field.dart';
import 'package:minicrm/screen/login/login_screen_model.dart';
import 'package:minicrm/util/resource/my_color.dart';
import 'package:minicrm/util/resource/my_dimen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends LoginScreenModel {
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
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "LOGIN",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MyDimen.fontSizeTitle,
                          color: MyColor.kPrimaryColor),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    SvgPicture.asset(
                      "assets/icons/login.svg",
                      height: size.height * 0.35,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedTextField(
                      hintText: "Your Email",
                      icon: Icons.person,
                      onChanged: (value) => setUsername(value),
                      isIconVisibility: false,
                    ),
                    RoundedTextField(
                      hintText: "Password",
                      icon: Icons.lock,
                      onChanged: (value) => setPassword(value),
                      isIconVisibility: true,
                      isPass: isShow,
                      press: () => setShow(),
                    ),
                    Text(
                      message,
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RoundedButton(
                      text: "LOGIN",
                      press: () => prosesLogin(),
                    ),
                    GestureDetector(
                      onTap: () => toForgotPassword(),
                      child: Text(
                        "Forgot Your Password ?",
                        style: TextStyle(
                          color: MyColor.kPrimaryColor,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    Text(
                      "Mini CRM APP $versionName",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "Sans",
                          fontSize: 13,
                          color: Colors.black45),
                    ),
                    Text(
                      "@ PT. Semen Indonesia",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "Sans",
                          fontSize: 13,
                          color: Colors.black45),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
