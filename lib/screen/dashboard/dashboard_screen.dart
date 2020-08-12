import 'package:flutter/material.dart';
import 'package:minicrm/screen/dashboard/dashboard_screen_model.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends DashboardScreenModel {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: new AppBar(title: new Text("Dashboard"),),
      drawer: new Drawer(
        child: new ListView(
          children: [
            new ListTile(
              title: Text("Marketing", style: TextStyle(color: Colors.black45),),
            ),
            new ListTile(
              title: Text("Berita"),
              leading: new Icon(Icons.description),
            ),
            new ListTile(
              title: Text("Program Harian"),
              leading: new Icon(Icons.local_activity),
            ),
            new ListTile(
              title: Text("Performance", style: TextStyle(color: Colors.black45),),
            ),
            new ListTile(
              title: Text("Beranda"),
              leading: new Icon(Icons.home),
            ),
            new ListTile(
              title: Text("Jadwal Kunjungan"),
              leading: new Icon(Icons.assignment),
            ),
            new ListTile(
              title: Text("Pelanggan"),
              leading: new Icon(Icons.people),
            ),
            new ListTile(

              title: Text("Riwayat Survey"),
              leading: new Icon(Icons.history),
            ),
            new ListTile(
              title: Text("Statistik Kunjungan"),
              leading: new Icon(Icons.equalizer),
            ),
            new ListTile(
              title: Text("Survey Kumulatif"),
              leading: new Icon(Icons.business),
            ),
          ],
        ),
      ),
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
                  "assets/images/signup_top.png",
                  width: size.width * 0.35,
                )),
            Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/login_bottom.png",
                  width: size.width * 0.4,
                )),
          ],
        ),
      ),
    );
  }
}
