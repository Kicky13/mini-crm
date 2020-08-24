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
  String versionName = "";
  String username = "";
  String password = "";
  String message = "";

  setShow() {
    isShow = !isShow;
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

<<<<<<< HEAD
  prosesLogin() {
    Navigator.pushReplacementNamed(context, Sync);
=======
  prosesLogin() async {
    /**
     * Contoh konesi ke API
     */
    var response = await http.post(APIConfig.login,
        headers: {}, body: {"username": username, "password": password});
    Map res = jsonDecode(response.body);
    if (res['status'].toString() == 'success') {
      /**
       * Start Contoh get data dari API dan di Save di Shared Priference
       */
      MLogin mlogin = MLogin.fromJson(res);
      String token = mlogin.data.token;
      MyPref.setForcaToken(token);
      /**
       * Contoh Navigasi ke screen lain
       */
      Navigator.pushReplacementNamed(context, NavBar);
    } else {
      setState(() {
        message = res['message'].toString();
      });
    }
>>>>>>> 46fbbda0a36252e58f49aa4ce30310a7427da652
  }

  toForgotPassword() {
    Navigator.pushNamed(context, ForgotPass);
  }
}
