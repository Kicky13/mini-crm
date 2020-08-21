import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:minicrm/api/api_config.dart';
import 'package:minicrm/app/my_router.dart';
import 'package:minicrm/model/login/mlogin.dart';
import 'package:minicrm/screen/login/login_screen.dart';
import 'package:minicrm/util/my_pref.dart';
import 'package:package_info/package_info.dart';
import 'package:http/http.dart' as http;

abstract class LoginScreenModel extends State<LoginScreen> {
  bool isShow = true;
  bool isShowFormLogin = true;
  bool isShowFormPNumber = false;
  bool isShowFormOTPCode = false;
  String phoneNumber = "";
  String versionName = "";
  String username = "";
  String password = "";
  String message = "";


  setShow() {
    isShow = !isShow;
    if (context != null) setState(() {});
  }

  setShowFormLogin() {
    isShowFormPNumber = false;
    isShowFormOTPCode = false;
    isShowFormLogin = true;
    if (context != null) setState(() {});
  }

  setShowFormPNumber() {
    isShowFormPNumber = true;
    isShowFormOTPCode = false;
    isShowFormLogin = false;
    if (context != null) setState(() {});
  }

  setShowFormOTPCode() {
    isShowFormPNumber = false;
    isShowFormOTPCode = true;
    isShowFormLogin = false;
    if (context != null) setState(() {});
  }

  setUsername(String value) {
    setState(() {
      username = value;
    });
  }

  setPassword(String value) {
    setState(() {
      password = value;
    });
  }

  setPhoneNumber(String value) {
    setState(() {
      phoneNumber = value;
    });
  }

  getVersion() async {
    var version = await PackageInfo.fromPlatform();
    versionName = version.version;
    setState(() {});
  }

  @override
  void initState() {
    getVersion();
    super.initState();
  }

  prosesLogin() async {
    /**
     * Contoh konesi ke API
     */
    var response = await http.post(APIConfig.login,
        headers: {}, body: {"username": username, "password": password});
    Map res = jsonDecode(response.body);
    print(res);
    if (res['status'].toString() == 'success') {
      /**
       * Start Contoh get data dari API dan di Save di Shared Priference
       */
//      MLogin mlogin = MLogin.fromJson(res);
//      String token = mlogin.data.token;

//      MyPref.setForcaToken(token);
      /**
       * Contoh Navigasi ke screen lain
       */
      Navigator.pushReplacementNamed(context, Dashboard);
    } else {
      setState(() {
        message = res['message'].toString();
      });
    }
  }

  toForgotPassword(){
    Navigator.pushNamed(context, ForgotPass);
  }

  prosesLogout(){
    Navigator.pushReplacementNamed(context, Login);
  }
}
