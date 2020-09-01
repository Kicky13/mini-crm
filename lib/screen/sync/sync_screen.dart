import 'package:flutter/material.dart';
import 'package:minicrm/screen/sync/sync_screen_model.dart';

class SyncScreen extends StatefulWidget {
  const SyncScreen({Key key}) : super(key: key);

  @override
  _SyncScreenState createState() => _SyncScreenState();
}

class _SyncScreenState extends SyncScreenModel {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _recentSync = Card(
      margin: EdgeInsets.fromLTRB(1, 0, 1, 5),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                'assets/icons/sync.png',
                width: size.width / 6,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sinkronisasi terakhir dengan server',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Sabtu, 19 Agustus 2020 13:49:00 GMT +07.00',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 10, color: Colors.redAccent),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
    var _customer = Card(
      margin: EdgeInsets.fromLTRB(1, 5, 1, 5),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                'assets/icons/pelanggan.png',
                width: size.width / 6,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sync Customer',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Status: Complete',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 10),
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
                onPressed: null,
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
    var _dividerMarket = Container(
      margin: EdgeInsets.all(5),
      child: Text(
        'Market Survey',
        style: TextStyle(color: Colors.black45, fontSize: 18),
      ),
    );
    var _dividerSales = Container(
      margin: EdgeInsets.all(5),
      child: Text(
        'Assessment Sales',
        style: TextStyle(color: Colors.black45, fontSize: 18),
      ),
    );
    var _survey = Card(
      margin: EdgeInsets.fromLTRB(1, 5, 1, 5),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                'assets/icons/document.png',
                width: size.width / 6,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sync Survey',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Status: Complete',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 10),
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
                onPressed: null,
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
    var _surveyImage = Card(
      margin: EdgeInsets.fromLTRB(1, 5, 1, 5),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                'assets/icons/photo.png',
                width: size.width / 6,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sync Image',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Status: Complete',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 10),
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
                onPressed: null,
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
    var _sales = Card(
      margin: EdgeInsets.fromLTRB(1, 5, 1, 5),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                'assets/icons/document.png',
                width: size.width / 6,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sync Assessment Sales',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Status: In-Complete',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 10),
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
    var _salesImage = Card(
      margin: EdgeInsets.fromLTRB(1, 5, 1, 5),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                'assets/icons/photo.png',
                width: size.width / 6,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sync Image',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Status: In-Complete',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 10),
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _recentSync,
              _customer,
              _dividerMarket,
              _survey,
              _surveyImage,
              _dividerSales,
              _sales,
              _salesImage
            ],
          ),
        ));
  }

  Widget _getIntoPage(Tab tab) {
    switch (tab.text) {
      case 'Sync':
        return Column(
          children: [
            Text(
              'Sync',
              style: TextStyle(color: Colors.black),
            )
          ],
        );
      case 'Download':
        return Column(
          children: [
            Text(
              'Download',
              style: TextStyle(color: Colors.black),
            )
          ],
        );
    }
  }
}
