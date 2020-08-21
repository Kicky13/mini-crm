import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minicrm/helper/action_text.dart';
import 'package:minicrm/helper/rounded_button.dart';
import 'package:minicrm/helper/rounded_text_field.dart';
import 'package:minicrm/helper/custom_text_field.dart';
import 'package:minicrm/screen/login/login_screen_model.dart';
import 'package:minicrm/util/resource/my_color.dart';
import 'package:minicrm/util/resource/my_dimen.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends LoginScreenModel {

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(MyColor.kPrimaryColor);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          children: [
//            Positioned(
//                bottom: 0,
//                right: 0,
//                child: Image.asset(
//                  "assets/images/login_bottom.png",
//                  width: size.width * 0.4,
//                )),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: 30,
                      ),
                      decoration: BoxDecoration(
                        color: MyColor.kPrimaryColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(45.0),
                          bottomLeft: Radius.circular(45.0)
                        )
                      ),
                      child:
                      Image.asset(
                        "assets/images/landing-crm.png",
                        width: size.width * 1,
                      ),
                    ),
                    isShowFormLogin ? _formLogin() :
                    isShowFormPNumber ? _formPhoneNumber() : _formOTPCode(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _formLogin() {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, bottom: 10),
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/images/sig_logo.png",
                  width: size.width * 0.25,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Let's Sign You In",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MyDimen.fontSizeLoginTitle,
                      color: MyColor.TextLoginTitle,
                    ),
                  ),
                ),
              ]
            )
          ),
          SizedBox(
            height: size.height * 0.06,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.0, right: 30.0,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Username or E-Mail",
                style: TextStyle(
                  fontSize: MyDimen.fontSizeLoginLabel,
                  color: MyColor.TextLoginLabel,
                ),
              ),
            ),
          ),
          CustomTextField(
            hintText: "Username",
            icon: Icons.person,
            onChanged: (value) => setUsername(value),
            isIconVisibility: false,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 30.0, right: 30.0, top: 30
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Password",
                style: TextStyle(
                  fontSize: MyDimen.fontSizeLoginLabel,
                  color: MyColor.TextLoginLabel,
                ),
              ),
            ),
          ),
          CustomTextField(
            hintText: "Password",
            icon: Icons.lock_outline,
            onChanged: (value) => setPassword(value),
            isIconVisibility: true,
            isPass: isShow,
            press: () => setShow(),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.0, right: 30.0,
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child:GestureDetector(
                onTap: () => setShowFormPNumber(),
                child: Text(
                  "Forgot?",
                  style: TextStyle(
                      color: MyColor.kPrimaryRedColor,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Text(
            message,
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          RoundedButton(
            text: "Sign In",
            press: () => prosesLogin(),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
        ]
      )
    );
  }

  Widget _formPhoneNumber() {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, bottom: 10),
            child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/sig_logo.png",
                    width: size.width * 0.25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MyDimen.fontSizeLoginTitle,
                        color: MyColor.TextLoginTitle,
                      ),
                    ),
                  ),
                ]
            )
          ),
          SizedBox(
            height: size.height * 0.06,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.0, right: 30.0,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Registered Phone Number",
                style: TextStyle(
                  fontSize: MyDimen.fontSizeLoginLabel,
                  color: MyColor.TextLoginLabel,
                ),
              ),
            ),
          ),
          CustomTextField(
            hintText: "Phone Number",
            onChanged: (value) => setPhoneNumber(value),
            keyboardType: TextInputType.number,
            isLeftIconVisibility: false,
            isIconVisibility: false,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedButton(
            text: "Send Verification Code",
            press: () => setShowFormOTPCode(),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
        ]
      )
    );
  }

  Widget _formOTPCode() {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, bottom: 10),
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/images/sig_logo.png",
                  width: size.width * 0.25,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "OTP Code Sent!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MyDimen.fontSizeLoginTitle,
                      color: MyColor.TextLoginTitle,
                    ),
                  ),
                ),
              ]
            )
          ),
          SizedBox(
            height: size.height * 0.06,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.0, right: 30.0,
            ),
            child: Text(
              "Enter the OTP code we sent via WA to your registered phone number "+phoneNumber,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: MyDimen.fontSizeLoginLabel,
                color: MyColor.TextLoginLabel,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          PinCodeTextField(
            autofocus: true,
            maxLength: 5,
            highlight: true,
            highlightColor: Colors.blue,
            defaultBorderColor: MyColor.TextLoginLabel,
            hasTextBorderColor: Colors.green,
            onDone: (text) {
              print("DONE $text");
            },
            pinBoxWidth: size.width * 0.15,
            pinBoxHeight: size.width * 0.15,
            pinBoxRadius: 10,
            wrapAlignment: WrapAlignment.spaceAround,
            pinBoxDecoration:
            ProvidedPinBoxDecoration.defaultPinBoxDecoration,
            pinTextStyle: TextStyle(fontSize: 22.0),
            pinTextAnimatedSwitcherTransition:
            ProvidedPinBoxTextAnimation.scalingTransition,
//                    pinBoxColor: Colors.green[100],
            pinTextAnimatedSwitcherDuration:
            Duration(milliseconds: 100),
//                    highlightAnimation: true,
            highlightAnimationBeginColor: Colors.black,
            highlightAnimationEndColor: Colors.white12,
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedButton(
            text: "Confirm",
            press: () => setShowFormLogin(),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
        ]
      )
    );
  }
}
