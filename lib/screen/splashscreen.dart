import 'package:flutter/material.dart';
import 'package:minicrm/app/my_router.dart';
import 'package:minicrm/util/my_pref.dart';
import 'package:minicrm/util/resource/my_dimen.dart';
import 'package:package_info/package_info.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String versionName = "";

  _changePage() async {
    var version = await PackageInfo.fromPlatform();
    versionName = version.version;
    setState(() {});
    await MyPref.init();
    var token = MyPref.getForcaToken();
    var isLogin = token != null && token.isNotEmpty;
    print('forcatoken $token');
    Future.delayed(Duration(seconds: MyDimen.timerSplash), () {
      Navigator.pushReplacementNamed(context, isLogin ? NavBar : Login);
    });
  }

  @override
  void initState() {
    _changePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 20,
              child: Column(
                children: [
                  Text(
                    "Mini CRM APP $versionName",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45),
                  ),
                  Text(
                    "@ PT. Semen Indonesia",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45),
                  ),
                ],
              )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.05),
                Image.asset(
                  "assets/images/landing-crm.png",
                  width: size.width * 0.95,
                ),
                SizedBox(height: size.height * 0.05),
                Image.asset(
                  "assets/images/sig_logo.png",
                  width: size.width * 0.25,
                ),
                SizedBox(height: size.height * 0.01),
                Text(
                  "WELCOME TO MINI CRM",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Subtitle",
                      color: Colors.black,
                      fontSize: 20),
                ),
                SizedBox(height: size.height * 0.05),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
