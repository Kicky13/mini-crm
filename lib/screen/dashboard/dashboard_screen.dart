import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:minicrm/helper/icon_menu.dart';
import 'package:minicrm/helper/mini_info_card.dart';
import 'package:minicrm/helper/news_card.dart';
import 'package:minicrm/helper/programs_card.dart';
import 'package:minicrm/helper/rounded_background.dart';
import 'package:minicrm/screen/dashboard/dashboard_screen_model.dart';
import 'package:minicrm/util/resource/my_color.dart';
import 'package:minicrm/util/resource/my_dimen.dart';
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

    var _appbar = Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: statusBarHeight),
      height: 58.0 + statusBarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Dashboard",
            style: textStyleAppbar,
          ),
          InkWell(
            onTap: () => goToUltah(),
            child: Stack(
              alignment: AlignmentDirectional(2.0, -2.0),
              children: <Widget>[
                Icon(
                  Icons.cake,
                  color: MyColor.warnaPutih,
                ),
                CircleAvatar(
                  radius: 7.6,
                  backgroundColor: Colors.redAccent,
                  child: Text(
                    "2",
                    style: whiteSmallText.copyWith(fontSize: 12),
                  ),
                )
              ],
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
                    style: whiteSmallText,
                  ),
                  Colors.white30,
                  7,
                  () {},
                  isUseIcon: true,
                ),
                Text(
                  "Hi, Anonim",
                  style: whiteSmallText.copyWith(fontSize: 20),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MiniInfoCard("Volume Selling Out", "14.87 %",
                    Icons.arrow_drop_down, "2,297", "16.000 Ton", MyColor.warnaMerah),
                MiniInfoCard("Kunjungan Customer", "200 %", Icons.arrow_drop_up,
                    "2", "1", Colors.green),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MiniInfoCard("Volume Selling Out", "14.87 %",
                    Icons.arrow_drop_down, "2,297", "16.000 Ton", MyColor.warnaMerah),
                MiniInfoCard("Kunjungan Customer", "200 %", Icons.arrow_drop_up,
                    "2", "1", Colors.green),
              ],
            ),
            SizedBox(
              height: 10,
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
          height: 305,
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
                  style: titleTextStyle.copyWith(
                      fontSize: 15,),
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
                            style: titleTextStyle.copyWith(
                                fontSize: 55),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 15, right: 15, bottom: 25),
                          child: Text(
                            "Aktif",
                            style: titleTextStyle.copyWith(
                                fontSize: 25),
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
                            style: titleTextStyle.copyWith(
                                fontSize: 55,
                                color: MyColor.warnaMerah),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 15, right: 15, bottom: 25),
                          child: Text(
                            "Non - Aktif",
                            style: titleTextStyle.copyWith(
                                fontSize: 25,
                                color: MyColor.warnaMerah),
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
                  style: titleTextStyle.copyWith(
                      fontSize: 15,),
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
                            style: blackSmallText.copyWith(
                                fontSize: 20,
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
                            style: titleTextStyle.copyWith(
                                fontSize: 50,),
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
                          style: blackSmallText.copyWith(
                              fontSize: 20,),
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
                          style: blackSmallText.copyWith(
                              fontSize: 20,),
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
                            style: blackSmallText.copyWith(
                                fontSize: 20),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 15, left: 15, bottom: 5),
                          child: Text(
                            "0",
                            style: blackSmallText.copyWith(
                                fontSize: 30,
                                color: MyColor.warnaMerah),
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
                            style: blackSmallText.copyWith(
                                fontSize: 20,),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 15, left: 15, bottom: 5),
                          child: Text(
                            "10",
                            style: blackSmallText.copyWith(
                                fontSize: 30,),
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
                  style: blackSmallText.copyWith(
                      fontSize: 18,
                      color: MyColor.warnaMerah),
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
                        color: MyColor.warnaHitam,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(MyDimen.roundedTopBar),
                          bottomLeft: Radius.circular(MyDimen.roundedTopBar),
                        )),
                    child: Column(
                      children: [
                        _topContent,
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () => naikTurun(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                ketNaikTurun,
                                style: whiteSmallText.copyWith(fontSize:18,color: MyColor.warnaPutih),
                              ),
                              Icon(
                                panah,
                                color: MyColor.warnaMerah,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  _iconMenu,
                  Container(
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 15, bottom: 5),
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
                            style: titleTextStyle)
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
                            style: titleTextStyle)
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
