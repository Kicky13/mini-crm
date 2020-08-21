import 'package:flutter/material.dart';
import 'package:minicrm/screen/dashboard/dashboard_screen.dart';
import 'package:minicrm/screen/login/forgot_password_screen.dart';
import 'package:minicrm/screen/login/login_screen.dart';
import 'package:minicrm/screen/change_password/change_password_screen.dart';
import 'package:minicrm/screen/statistic/statistic_screen.dart';
import 'dart:core';

import 'package:minicrm/screen/visit_schedule/visit_schedule_screen.dart';


String Root = "/";
String Login = "/login";
String ForgotPass = "/forgotpass";
String ChangePass = "/changepass";
String Dashboard = "/dashboard";
String VisitSchedule = "/visit_schedule";
String Statistic = "/statistic";

class MyRouter {
  Map routes = <String, WidgetBuilder>{
    Login : (BuildContext context) => new LoginScreen(),
    ChangePass : (BuildContext context) => new ChangePasswordScreen(),
    Dashboard : (BuildContext context) => new DashboardScreen(),
    ForgotPass : (BuildContext context) => new ForgotPasswordScreen(),
    VisitSchedule : (BuildContext context) => new VisitScheduleScreen(),
    Statistic : (BuildContext context) => new StatisticScreen()
  };
}