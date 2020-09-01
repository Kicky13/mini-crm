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
    Size size = MediaQuery.of(context).size;
    var _customer = Card(
      margin: EdgeInsets.fromLTRB(1, 5, 1, 5),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              fit: FlexFit.loose,
              flex: 2,
              child: Image.asset(
                'assets/icons/Download.png',
                width: size.width / 6,
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Download Customer',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Download dilakukan sekali setelah login',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 10, color: Colors.redAccent),
                  )
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              flex: 3,
              child: RaisedButton(
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () => pressDownloadCustomer(),
                child: Text(
                  'Download',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
    var _survey = Card(
      margin: EdgeInsets.fromLTRB(1, 5, 1, 5),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              fit: FlexFit.loose,
              flex: 2,
              child: Image.asset(
                'assets/icons/Download.png',
                width: size.width / 6,
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Download Survey',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Download saat ada penugasan survey',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 10, color: Colors.redAccent),
                  )
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              flex: 3,
              child: RaisedButton(
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () => pressCheckData(),
                child: Text(
                  'Download',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
    var _komponen = Card(
      margin: EdgeInsets.fromLTRB(1, 5, 1, 5),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              fit: FlexFit.loose,
              flex: 2,
              child: Image.asset(
                'assets/icons/Download.png',
                width: size.width / 6,
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Download Component',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Download dilakukan sekali setelah login',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 10, color: Colors.redAccent),
                  )
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              flex: 3,
              child: RaisedButton(
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                child: Text(
                  'Download',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
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
