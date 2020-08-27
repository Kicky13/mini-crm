import 'package:flutter/material.dart';
import 'package:minicrm/screen/download/download_screen_model.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({Key key}) : super(key: key);

  @override
  _DownloadScreenState createState() => _DownloadScreenState();
}

class _DownloadScreenState extends DownloadScreenModel {
  @override
  Widget build(BuildContext context) {
    return Text("Halaman Download");
  }
}
