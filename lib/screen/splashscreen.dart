import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_top.png",
                width: size.width * 0.3,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: size.width * 0.2,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "WELCOME TO MINI CRM",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Subtitle",
                      fontSize: 20),
                ),
                SizedBox(height: size.height * 0.05),
                SvgPicture.asset(
                  "assets/icons/chat.svg",
                  height: size.height * 0.45,
                ),
                SizedBox(height: size.height * 0.08),
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
            )
          ],
        ),
      ),
    );
  }
}
