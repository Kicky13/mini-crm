import 'package:flutter/material.dart';
import 'package:minicrm/screen/download/download_screen_model.dart';
import 'package:minicrm/helper/card_download.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({Key key}) : super(key: key);

  @override
  _DownloadScreenState createState() => _DownloadScreenState();
}

class _DownloadScreenState extends DownloadScreenModel {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _customer = CardDownload(
        title: 'Download Customer',
        subtitle: 'Download dilakukan setelah login',
        press: () => pressDownloadCustomer(),
        isLoading: isDownloadCustomer);
    var _survey = CardDownload(
      title: 'Download Survey',
      subtitle: 'Download saat ada penugasan survey',
      press: null,
      isLoading: isDownloadSurvey,
    );
    var _komponen = CardDownload(
      title: 'Download Component',
      subtitle: 'Download dilakukan setelah login',
      press: null,
      isLoading: isDownloadComponent,
    );
    return Container(
      color: Colors.grey[200],
      height: size.height - (size.height / 3),
      width: double.infinity,
      child: Column(
        children: [_customer, _survey, _komponen],
      ),
    );
  }
}
