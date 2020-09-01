import 'package:flutter/material.dart';
import 'package:minicrm/screen/profile/profile_screen.dart';
import 'package:minicrm/app/my_router.dart';
import 'package:minicrm/util/my_pref.dart';

abstract class ProfileScreenModel extends State<ProfileScreen> {
  bool isShowFormUbahPassword = false;
  bool isShowFormProfile = true;

  setShowFormUbahPassword(){
    isShowFormProfile = false;
    isShowFormUbahPassword = true;
    if (context != null) setState(() {});
  }

  setShowFormProfile(){
    isShowFormProfile = true;
    isShowFormUbahPassword = false;
    if (context != null) setState(() {});
  }

  prosesLogout(){
    MyPref.logout();
    Navigator.pushReplacementNamed(context, Login);
  }
}