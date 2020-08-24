import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minicrm/util/resource/my_color.dart';
import 'package:minicrm/util/resource/my_style.dart';

class InfoCard extends StatelessWidget {
  String title;
  Widget left;
  Widget right;
  bool isDetail;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15.0),
            width: size.width - 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0)),
            ),
            child: Text(
              title,
              style: textStyle.copyWith(fontSize: 15, color: MyColor.warnaTema),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              left,
              right,
            ],
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            width: size.width - 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0)),
            ),
            child:
            GestureDetector(
                onTap: () {},
                child: Text(
                  "Selengkapnya...",
                  style: textStyle.copyWith(
                      fontSize: 15, color: Colors.red),
                  textAlign: TextAlign.center,
                )),
          ),
        ],
      ),
    );
  }
}
