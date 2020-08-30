import 'dart:core';
import 'package:flutter/material.dart';
import 'package:minicrm/screen/login/forgot_password_screen.dart';
import 'package:minicrm/screen/login/login_screen.dart';
import 'package:minicrm/screen/change_password/change_password_screen.dart';
import 'package:minicrm/screen/navbar/navigation_bar.dart';
import 'package:minicrm/screen/ulang_tahun/ulang_tahun_screen.dart';
import 'package:minicrm/screen/sync/sync_screen.dart';
import 'package:minicrm/screen/customer/customer_screen.dart';

String Root = "/";
String Login = "/login";
String ForgotPass = "/forgotpass";
String ChangePass = "/changepass";
String NavBar = "/navbar";
String UlTah = "/ultah";
String Sync = "/sync";
String Pelanggan = "/customer";

class MyRouter {
  Map routes = <String, WidgetBuilder>{
    Login: (BuildContext context) => new LoginScreen(),
    ChangePass: (BuildContext context) => new ChangePasswordScreen(),
    NavBar: (BuildContext context) => new NavigationBar(),
    ForgotPass: (BuildContext context) => new ForgotPasswordScreen(),
    UlTah: (BuildContext context) => new UlangTahunScreen(),
    Sync: (BuildContext context) => new SyncScreen(),
    Pelanggan: (BuildContext context) => new CustomerScreen()
  };
}
