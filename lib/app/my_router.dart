import 'dart:core';
import 'package:flutter/material.dart';
import 'package:minicrm/screen/login/login_screen.dart';
import 'package:minicrm/screen/navbar/navigation_bar.dart';
import 'package:minicrm/screen/ulang_tahun/ulang_tahun_screen.dart';

const String Root = "/";
const String Login = "/login";
const String NavBar = "/navbar";
const String UlTah = "/ultah";

class MyRouter {
  Map routes = <String, WidgetBuilder>{
    Login: (BuildContext context) => new LoginScreen(),
    NavBar: (BuildContext context) => new NavigationBar(),
    UlTah: (BuildContext context) => new UlangTahunScreen(),
  };
}
