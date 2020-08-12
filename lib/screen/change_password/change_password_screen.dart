import 'package:flutter/material.dart';
import 'package:minicrm/helper/rounded_button.dart';
import 'package:minicrm/helper/rounded_text_field.dart';
import 'package:minicrm/screen/change_password/change_password_screen_model.dart';
import 'package:minicrm/util/resource/my_color.dart';
import 'package:minicrm/util/resource/my_dimen.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends ChangePasswordScreenModel {
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
                    "CHANGE PASSWORD",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MyDimen.fontSizeTitle,
                        color: MyColor.kPrimaryColor),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  RoundedTextField(
                    hintText: "Old Password",
                    icon: Icons.lock,
                    onChanged: (value) {},
                    isIconVisibility: true,
                    isPass: isShowOP,
                    press: () => setShowOP(),
                  ),
                  RoundedTextField(
                    hintText: "New Password",
                    icon: Icons.lock,
                    onChanged: (value) {},
                    isIconVisibility: true,
                    isPass: isShowNP,
                    press: () => setShowNP(),
                  ),
                  RoundedTextField(
                    hintText: "Confim Password",
                    icon: Icons.lock,
                    onChanged: (value) {},
                    isIconVisibility: true,
                    isPass: isShowCP,
                    press: () => setShowCP(),
                  ),
                  RoundedButton(
                    text: "SAVE",
                    press: () => prosesSavePass(),
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
