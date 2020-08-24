import 'package:flutter/material.dart';
import 'package:minicrm/helper/header.dart';
import 'package:minicrm/screen/ulang_tahun/ulang_tahun_screen_model.dart';

class UlangTahunScreen extends StatefulWidget {
  @override
  _UlangTahunScreenState createState() => _UlangTahunScreenState();
}

class _UlangTahunScreenState extends UlangTahunScreenModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Header("Ulang Tahun",
          Container(
            child: Center(
              child: Text("isi contentnya disini"),
            ),
          ),
      ),
    );
  }
}
