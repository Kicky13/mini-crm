import 'dart:core';
import 'package:flutter/material.dart';
import 'package:minicrm/screen/login/forgot_password_screen.dart';
import 'package:minicrm/screen/login/login_screen.dart';
import 'package:minicrm/screen/change_password/change_password_screen.dart';
<<<<<<< HEAD
import 'package:minicrm/screen/sync/sync_screen.dart';
import 'dart:core';
=======
import 'package:minicrm/screen/navbar/navigation_bar.dart';
import 'package:minicrm/screen/ulang_tahun/ulang_tahun_screen.dart';
>>>>>>> 46fbbda0a36252e58f49aa4ce30310a7427da652

String Root = "/";
String Login = "/login";
String ForgotPass = "/forgotpass";
String ChangePass = "/changepass";
<<<<<<< HEAD
String Dashboard = "/dashboard";
String Sync = "/sync";
=======
String NavBar = "/navbar";
String UlTah = "/ultah";
>>>>>>> 46fbbda0a36252e58f49aa4ce30310a7427da652

class MyRouter {
  Map routes = <String, WidgetBuilder>{
    Login: (BuildContext context) => new LoginScreen(),
    ChangePass: (BuildContext context) => new ChangePasswordScreen(),
<<<<<<< HEAD
    Dashboard: (BuildContext context) => new DashboardScreen(),
    ForgotPass: (BuildContext context) => new ForgotPasswordScreen(),
    Sync: (BuildContext context) => new SyncScreen()
=======
    NavBar: (BuildContext context) => new NavigationBar(),
    ForgotPass: (BuildContext context) => new ForgotPasswordScreen(),
    UlTah: (BuildContext context) => new UlangTahunScreen(),
>>>>>>> 46fbbda0a36252e58f49aa4ce30310a7427da652
  };
}
