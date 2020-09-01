import 'package:flutter/material.dart';
import 'package:minicrm/screen/visit_schedule/survey/photo/photo_survey_screen_model.dart';

class PhotoSurveyScreen extends StatefulWidget {
  @override
  _PhotoSurveyScreenState createState() => _PhotoSurveyScreenState();
}

class _PhotoSurveyScreenState extends PhotoSurveyScreenModel {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Photo Survey"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body: _initWidget(),
      ),
    );
  }

  _initWidget() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Card(
              elevation: 6,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  children: [
                    Image(
                        width: 86,
                        height: 86,
                        image: AssetImage("assets/icons/photo-128px.png")),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Ambil Photo",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(child: _listPhoto())
        ],
      ),
    );
  }

  _listPhoto() {
    return Container(
      margin: EdgeInsets.only(top: 15, left: 15, right: 15),
      child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          padding: EdgeInsets.all(4),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: <String>[
            'assets/icons/pelanggan.png',
            'assets/icons/photo-128px.png',
            'assets/icons/photo-128px.png',
          ].map((String url) {
            return _itemPhoto(url);
          }).toList()),
    );
  }

  Widget _itemPhoto(String url) {
    return GridTile(
        child: Container(
      child: Stack(
        children: [
          Center(child: Image.asset(url, fit: BoxFit.cover)),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              child: IconButton(
                  icon: Icon(Icons.delete_forever),
                  color: Colors.red,
                  onPressed: () {}),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10)),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
    ));
  }
}
