import 'dart:core';
import 'package:flutter/material.dart';
import 'package:minicrm/screen/login/login_screen.dart';
import 'package:minicrm/screen/navbar/navigation_bar.dart';
import 'package:minicrm/screen/ulang_tahun/ulang_tahun_screen.dart';
import 'package:minicrm/screen/statistic/statistic_screen.dart';
import 'package:minicrm/screen/visit_schedule/visit_schedule_screen.dart';

String Root = "/";
String Login = "/login";
String ForgotPass = "/forgotpass";
String ChangePass = "/changepass";
String NavBar = "/navbar";
String UlTah = "/ultah";
String VisitSchedule = "/visit_schedule";
String Statistic = "/statistic";

class MyRouter {
  Map routes = <String, WidgetBuilder>{
    Login: (BuildContext context) => new LoginScreen(),
    NavBar: (BuildContext context) => new NavigationBar(),
    UlTah: (BuildContext context) => new UlangTahunScreen(),
    VisitSchedule: (BuildContext context) => new VisitScheduleScreen(),
    Statistic : (BuildContext context) => new StatisticScreen()
  };
}
