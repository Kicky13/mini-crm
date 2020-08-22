import 'package:flutter/material.dart';
import 'package:minicrm/app/my_router.dart';
import 'package:minicrm/screen/login/login_screen.dart';
import 'package:package_info/package_info.dart';

abstract class LoginScreenModel extends State<LoginScreen> {
  bool isShow = true;
  String versionName = "";

  setShow() {
    isShow = !isShow;
    if (context != null) setState(() {});
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

  prosesLogin() {
    Navigator.pushReplacementNamed(context, Sync);
  }

  toForgotPassword() {
    Navigator.pushNamed(context, ForgotPass);
  }
}
