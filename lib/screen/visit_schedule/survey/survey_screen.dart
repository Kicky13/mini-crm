import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minicrm/screen/visit_schedule/item/customer_item.dart';
import 'package:minicrm/screen/visit_schedule/survey/photo/photo_survey_screen.dart';
import 'package:minicrm/screen/visit_schedule/survey/survey_screen_model.dart';
import 'package:minicrm/util/resource/my_color.dart';
import 'package:toggle_bar/toggle_bar.dart';

class SurveyScreen extends StatefulWidget {
  @override
  _SurveyScreenState createState() => _SurveyScreenState();
}

class _SurveyScreenState extends SurveyScreenModel {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Survey Toko"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(
          backgroundColor: MyColor.warnaMerah,
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: _initWidget(),
      ),
    );
  }

  _initWidget() {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              physics: ScrollPhysics(),
              children: [
                _customer(),
                _codeVisit(),
                _tabBar(),
              ],
            ),
          ),
          _bottomAction()
        ],
      ),
    );
  }

  _customer() {
    return CustomerItem(
      kdCustomer: "100002234",
      customer: "Maju Jaya Abadi Sentosa asdfasdf",
      pemilik: "Sutejo",
      phone: "089134234245",
      address: "Jl. Gajayana Malang asasdf asdf",
      paddingCustEnd: 60,
    );
  }

  _codeVisit() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Kode Kunjungan",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: _generateCodeWidget("44213"),
          )
        ],
      ),
    );
  }

  _generateCodeWidget(String code) {
    var result = List<Widget>();
    code.runes.forEach((rune) {
      var char = String.fromCharCode(rune);
      result.add(_containerCode(char));
    });

    return result;
  }

  _containerCode(String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(8)),
    );
  }

  _tabBar() {
    return Column(
      children: [
        ToggleBar(
          labels: ["Produk", "Keluhan", "Promosi"],
          backgroundColor: MyColor.warnaAbuMuda,
          selectedTabColor: MyColor.warnaMerah,
          textColor: MyColor.warnaTema,
          labelTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          onSelectionUpdated: onSelectionUpdated,
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: tabs.elementAt(currentIndex),
        )
      ],
    );
  }

  _bottomAction() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: _buttonIcon(
                text: "Order | Project Toko",
                icon: Icons.assignment,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PhotoSurveyScreen()));
                }),
          ),
          SizedBox(
            width: 15,
          ),
          _buttonIcon(
              text: "Photo",
              icon: Icons.camera_enhance,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PhotoSurveyScreen()));
              }),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 5,
            blurRadius: 3,
            offset: Offset(0, 3),
          ),
        ],
      ),
    );
  }

  _buttonIcon({String text, Color color, IconData icon, Function onPressed}) {
    return MaterialButton(
      height: 35,
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text("$text", style: TextStyle(color: Colors.white, fontSize: 14))
          ],
        ),
      ),
      color: color ?? MyColor.warnaMerah,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    );
  }
}
