import 'package:flutter/material.dart';
import 'package:minicrm/helper/header.dart';
import 'package:minicrm/helper/rounded_background.dart';
import 'package:minicrm/screen/riwayat/riwayat_screen_model.dart';
import 'package:minicrm/util/resource/my_color.dart';
import 'package:minicrm/util/resource/my_style.dart';

class RiwayatScreen extends StatefulWidget {
  const RiwayatScreen({Key key}) : super(key: key);

  @override
  _RiwayatScreenState createState() => _RiwayatScreenState();
}

class _RiwayatScreenState extends RiwayatScreenModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Header(
          "Riwayat Survey",
          Container(
              child: Center(child: Text("isi content halamannya disini"))),
          isIconBirth: true,
          birthCount: 2,
          isBack: false,
          widget: RoundedBackground(
            Text(
              "January 2020",
              overflow: TextOverflow.ellipsis,
              style: titleTextStyle.copyWith(fontSize: 13, color: MyColor.warnaPutih),
            ),
            Colors.white30,
            7,
            () {},
            isUseIcon: true,
          )),
    );
  }
}
