import 'package:flutter/material.dart';
import 'package:minicrm/screen/profile/profile_screen_model.dart';
import 'package:minicrm/helper/header.dart';
import 'package:minicrm/helper/profile_button.dart';
import 'package:minicrm/util/resource/my_color.dart';
import 'package:minicrm/util/resource/my_dimen.dart';
import 'package:minicrm/util/resource/my_style.dart';
import 'package:minicrm/helper/custom_text_field.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ProfileScreenModel {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background_profile.png"),
            fit: BoxFit.cover,
          ),
        ),
        child:
            SafeArea(
            child: SingleChildScrollView(
              child: Column(
                  children:[
                    Header("Profile",
                        Column(
                          children: [
                            SizedBox(
                              height: size.width * 0.1,
                            ),
                            Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: size.width * 0.3,
                                    ),
                                    Container(
                                        width: size.width * 0.8,
                                        padding: EdgeInsets.only(
                                          top: size.width * 0.35,
                                          bottom: 10,
                                        ),
                                        decoration: BoxDecoration(
                                            color: MyColor.warnaHitam,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(18.0),
                                                topLeft: Radius.circular(18.0)
                                            )
                                        ),
                                        child:
                                        Column(
                                          children: [
                                            Text(
                                              'Anonimwati',
                                              style: whiteSmallText.copyWith(fontSize: 24),
                                            ),
                                            Text(
                                              'Sales Area Manager',
                                              style: whiteSmallText.copyWith(fontSize: 24, fontWeight: FontWeight.w900),
                                            ),
                                          ],
                                        )
                                    ),
                                    Image.asset(
                                      "assets/images/line_color.png",
                                      width: size.width * 0.8,
                                    ),
                                  ],
                                ),
                                Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(400),
                                      child:Image.asset(
                                        "assets/images/photo_profile.jpeg",
                                        width: size.width * 0.6,
                                        height: size.width * 0.6,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    FlatButton(
                                        onPressed: ()=>print('ganti foto'),
                                        padding: EdgeInsets.all(0.0),
                                        child: Image.asset(
                                          "assets/images/button_foto.png",
                                          width: 60,
                                          height: 60,
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                  ],
                                )
                              ],
                            ),
                            isShowFormProfile ? _formProfile() : _formUbahPassword()
                          ],
                        ),
                        isIconBirth: true,
                        birthCount: 2,
                        isBack: false,
                        isDisableMaxHeight: true,
                    ),
                  ]
              ),
            ),
          ),
      ),
    );
  }

  Widget _formProfile() {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Column(
          children: [
            SizedBox(
              height: size.width * 0.1,
            ),
            ProfileButton(
                'Ubah Password',
                    ()=>setShowFormUbahPassword(),
                "assets/images/button_lock.png"
            ),
            SizedBox(
              height: size.height*0.02,
            ),
            ProfileButton(
                "Log Out",
                    ()=>prosesLogout(),
                "assets/images/button_logout.png"
            )
          ],
        ),
    );
  }

  Widget _formUbahPassword() {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: size.height*0.03,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.0, right: 30.0,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Password Lama",
                style: blackSmallText.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          CustomTextField(
            hintText: "Input Password Lama",
            onChanged: (value) => print(value),
            keyboardType: TextInputType.text,
            isLeftIconVisibility: false,
            isIconVisibility: true,
          ),
          SizedBox(
            height: size.height*0.03,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.0, right: 30.0,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Password Baru",
                style: blackSmallText.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          CustomTextField(
            hintText: "Input Password Baru",
            onChanged: (value) => print(value),
            keyboardType: TextInputType.text,
            isLeftIconVisibility: false,
            isIconVisibility: true,
          ),
          SizedBox(
            height: size.height*0.03,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.0, right: 30.0,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Konfirmasi Password Baru",
                style: blackSmallText.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          CustomTextField(
            hintText: "Input Ulang Password Baru",
            onChanged: (value) => print(value),
            keyboardType: TextInputType.text,
            isLeftIconVisibility: false,
            isIconVisibility: true,
          ),
          SizedBox(
            height: size.width * 0.02,
          ),
          ProfileButton(
              'Ubah Password',
                  ()=>setShowFormProfile(),
              "assets/images/button_lock.png"
          ),
        ],
      ),
    );
  }

}
