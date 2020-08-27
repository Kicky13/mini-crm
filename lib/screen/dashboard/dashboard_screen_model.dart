import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:minicrm/api/api_config.dart';
import 'package:minicrm/app/my_router.dart';
import 'package:minicrm/model/news/mnews.dart';
import 'package:minicrm/model/news/news.dart';
import 'package:minicrm/model/program/mprogram.dart';
import 'package:minicrm/model/program/program.dart';
import 'package:minicrm/screen/dashboard/dashboard_screen.dart';
import 'package:http/http.dart' as http;
import 'package:minicrm/util/my_pref.dart';

abstract class DashboardScreenModel extends State<DashboardScreen> {
  double tinggiTopContent = 230;
  IconData panah = Icons.keyboard_arrow_down;
  String ketNaikTurun = "Selengkapnya";
  int currentNews = 0;
  int currentProgram = 0;
  List<News> berita = List<News>();
  List<Program> program = List<Program>();
  var token = MyPref.getCRMToken();
  String message = "";
  String message2 = "";
  String id_user = "1175";
  String start = "1";
  String limit = "10";

  naikTurun() {
    setState(() {
      tinggiTopContent == 230 ? tinggiTopContent = 460 : tinggiTopContent = 230;
      panah == Icons.keyboard_arrow_down
          ? panah = Icons.keyboard_arrow_up
          : panah = Icons.keyboard_arrow_down;
      ketNaikTurun == "Selengkapnya"
          ? ketNaikTurun = "Kecilkan"
          : ketNaikTurun = "Selengkapnya";
    });
  }

  jadwalKunjungan() {
    Navigator.pushNamed(context, VisitSchedule);
  }

  statistikKunjungan() {
    Navigator.pushNamed(context, Statistic);
  }

  pelanggan() {}

  penilaianSales() {}

  goToUltah() {
    Navigator.pushNamed(context, UlTah);
  }

  getNews() async {
    var response = await http.get(APIConfig.news, headers: {"token": token});
    Map res = jsonDecode(response.body);
    if (res['status'].toString() == 'success') {
      setState(() {
        berita = MNews.fromJson(res).data;
      });
    } else {
      setState(() {
        message = res['message'].toString();
      });
    }
  }

  getProgram() async {
    var response = await http.post(APIConfig.program,
        headers: {"token": token},
        body: {"id_user": id_user, "start": start, "limit": limit});
    Map res = jsonDecode(response.body);
    if (res['status'].toString() == 'success') {
      setState(() {
        program = MProgram.fromJson(res).data;
      });
    } else {
      setState(() {
        message2 = res['message'].toString();
      });
    }
  }

  @override
  void initState() {
    getNews();
    getProgram();
    super.initState();
  }
}
