import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:minicrm/helper/icon_menu.dart';
import 'package:minicrm/helper/mini_info_card.dart';
import 'package:minicrm/helper/news_card.dart';
import 'package:minicrm/helper/programs_card.dart';
import 'package:minicrm/helper/rounded_background.dart';
import 'package:minicrm/screen/dashboard/dashboard_screen_model.dart';
import 'package:minicrm/util/resource/my_color.dart';
import 'package:minicrm/util/resource/my_style.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends DashboardScreenModel {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    Size size = MediaQuery.of(context).size;
<<<<<<< HEAD
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Dashboard"),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: [
            new ListTile(
              title: Text(
                "Marketing",
                style: TextStyle(color: Colors.black45),
              ),
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
              title: Text(
                "Performance",
                style: TextStyle(color: Colors.black45),
              ),
=======

    var _appbar = Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: statusBarHeight),
      height: 58.0 + statusBarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Dashboard",
            style: textStyle.copyWith(fontSize: 28),
          ),
          InkWell(
            onTap: () => goToUltah(),
            child: Stack(
              alignment: AlignmentDirectional(2.0, -2.0),
              children: <Widget>[
                Icon(
                  Icons.cake,
                  color: MyColor.warnaKonten,
                ),
                CircleAvatar(
                  radius: 7.6,
                  backgroundColor: Colors.redAccent,
                  child: Text(
                    "2",
                    style: TextStyle(fontSize: 11.0, color: Colors.white),
                  ),
                )
              ],
>>>>>>> 46fbbda0a36252e58f49aa4ce30310a7427da652
            ),
          ),
        ],
      ),
    );

    double appbarSize = 58.0 + statusBarHeight;
    var _topContent = Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: appbarSize),
      height: tinggiTopContent,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundedBackground(
                  Text(
                    "January 2020",
                    overflow: TextOverflow.ellipsis,
                    style: textStyle.copyWith(fontSize: 13),
                  ),
                  Colors.white30,
                  7,
                  (){},
                  isUseIcon: true,
                ),
                Text(
                  "Hi, Anonim",
                  style: textStyle.copyWith(fontSize: 20),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MiniInfoCard("Volume Selling Out", "14.87 %",
                    Icons.arrow_drop_down, "2,297", "16.000 Ton", Colors.red),
                MiniInfoCard("Kunjungan Customer", "200 %", Icons.arrow_drop_up,
                    "2", "1", Colors.green),
              ],
            ),
<<<<<<< HEAD
            new ListTile(
              title: Text("Riwayat Survey"),
              leading: new Icon(Icons.history),
=======
            SizedBox(
              height: 15,
>>>>>>> 46fbbda0a36252e58f49aa4ce30310a7427da652
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MiniInfoCard("Volume Selling Out", "14.87 %",
                    Icons.arrow_drop_down, "2,297", "16.000 Ton", Colors.red),
                MiniInfoCard("Kunjungan Customer", "200 %", Icons.arrow_drop_up,
                    "2", "1", Colors.green),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            MiniInfoCard("Kunjungan Customer", "200 %", Icons.arrow_drop_up,
                "2", "1", Colors.green),
          ],
        ),
      ),
    );

    var _iconMenu = Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 15),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconMenu("assets/icons/jadwal_kunjungan.png", "Jadwal\nKunjungan",
              () => jadwalKunjungan()),
          IconMenu("assets/icons/statistik_kunjungan.png",
              "Statistik\nKunjungan", () => statistikKunjungan()),
          IconMenu(
              "assets/icons/pelanggan.png", "Pelanggan\n", () => pelanggan()),
          IconMenu("assets/icons/penilaian_sales.png", "Penilaian\nSales",
              () => penilaianSales())
        ],
      ),
    );

    var _news = Container(
      width: double.infinity,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        CarouselSlider(
          height: 295,
          initialPage: 0,
          autoPlay: true,
          reverse: false,
          enableInfiniteScroll: true,
          autoPlayInterval: Duration(seconds: 2),
          autoPlayAnimationDuration: Duration(milliseconds: 2000),
          pauseAutoPlayOnTouch: Duration(seconds: 3),
          scrollDirection: Axis.horizontal,
          onPageChanged: (index) {
            setState(() {
              currentNews = index;
            });
          },
          items: berita.map((currNews) {
            return Builder(
              builder: (BuildContext context) {
                return NewsCard(currNews);
              },
            );
          }).toList(),
        ),
      ]),
    );

    var _program = Container(
      width: double.infinity,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        CarouselSlider(
          height: 115,
          initialPage: 0,
          autoPlay: true,
          reverse: false,
          enableInfiniteScroll: true,
          autoPlayInterval: Duration(seconds: 2),
          autoPlayAnimationDuration: Duration(milliseconds: 2000),
          pauseAutoPlayOnTouch: Duration(seconds: 3),
          scrollDirection: Axis.horizontal,
          onPageChanged: (index) {
            setState(() {
              currentProgram = index;
            });
          },
          items: program.map((currNews) {
            return Builder(
              builder: (BuildContext context) {
                return ProgramsCard(currNews);
              },
            );
          }).toList(),
        ),
      ]),
    );

    double cardSize = 255;
    var _infoToko = Container(
      width: size.width - 40,
      height: cardSize,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
            side: BorderSide(color: Colors.black, width: 0.5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Toko Aktif",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: MyColor.warnaTema),
                  textAlign: TextAlign.left,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: ((size.width - 40) / 2) - 4,
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.black12),
                            right: BorderSide(color: Colors.black12),
                            bottom: BorderSide(color: Colors.black12))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 40),
                          child: Text(
                            "200",
                            style: TextStyle(
                                fontSize: 55,
                                fontWeight: FontWeight.w400,
                                color: MyColor.warnaTema),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 15, right: 15, bottom: 25),
                          child: Text(
                            "Aktif",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                                color: MyColor.warnaTema),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: ((size.width - 40) / 2) - 4,
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.black12),
                            bottom: BorderSide(color: Colors.black12))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 40),
                          child: Text(
                            "165",
                            style: TextStyle(
                                fontSize: 55,
                                fontWeight: FontWeight.w400,
                                color: Colors.red),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 15, right: 15, bottom: 25),
                          child: Text(
                            "Non - Aktif",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                                color: Colors.red),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );

    var _infoKunjungan = Container(
      width: size.width - 40,
      height: cardSize,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
            side: BorderSide(color: Colors.black, width: 0.5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Kunjungan Sales",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: MyColor.warnaTema),
                ),
              ),
              Container(
                width: size.width - 40,
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(color: Colors.black12),
                )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35, bottom: 5),
                      child: Column(
                        children: [
                          Icon(
                            Icons.arrow_drop_up,
                            size: 50,
                            color: Colors.green,
                          ),
                          Text(
                            "200.00 %",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 35, bottom: 5),
                      child: Column(
                        children: [
                          Text(
                            "125",
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w400,
                                color: MyColor.warnaTema),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 5),
                    child: Column(
                      children: [
                        Text(
                          "Target :",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: MyColor.warnaTema),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, bottom: 5),
                    child: Column(
                      children: [
                        Text(
                          "110",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: MyColor.warnaTema),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: ((size.width - 40) / 2) - 4,
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.black12),
                            right: BorderSide(color: Colors.black12),
                            bottom: BorderSide(color: Colors.black12))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 5),
                          child: Text(
                            "Kemarin :",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: MyColor.warnaTema),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 15, left: 15, bottom: 5),
                          child: Text(
                            "0",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w300,
                                color: Colors.red),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: ((size.width - 40) / 2) - 4,
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.black12),
                            bottom: BorderSide(color: Colors.black12))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 5),
                          child: Text(
                            "Hari ini :",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: MyColor.warnaTema),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 15, left: 15, bottom: 5),
                          child: Text(
                            "10",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w300,
                                color: MyColor.warnaTema),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Selengkapnya...",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.red),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )),
    );

    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: tinggiTopContent + 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: MyColor.warnaTema,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(45),
                          bottomLeft: Radius.circular(45),
                        )),
                    child: Column(
                      children: [
                        _topContent,
                        SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () => naikTurun(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                ketNaikTurun,
                                style: textStyle,
                              ),
                              Icon(
                                panah,
                                color: Colors.red,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  _iconMenu,
                  Container(
                    padding:
                        EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [_infoToko, _infoKunjungan],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 20, bottom: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text("Berita",
                            style: textStyle.copyWith(color: MyColor.warnaTema))
                      ],
                    ),
                  ),
                  berita != null && berita.isNotEmpty && berita.length > 0
                      ? _news
                      : CircularProgressIndicator(),
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 20, bottom: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text("Program",
                            style: textStyle.copyWith(color: MyColor.warnaTema))
                      ],
                    ),
                  ),
                  program != null && program.isNotEmpty && program.length > 0
                      ? _program
                      : CircularProgressIndicator(),
                ],
              ),
              _appbar,
            ],
          ),
        ),
      ),
    );
  }
}
