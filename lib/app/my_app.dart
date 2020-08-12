import 'package:flutter/material.dart';
import 'package:minicrm/app/my_router.dart';
import 'package:minicrm/screen/splashscreen.dart';
import 'package:minicrm/util/resource/my_color.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini CRM',
      theme: ThemeData(
        primaryColor: MyColor.kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashScreen(),
      routes: MyRouter().routes,
    );
  }
}