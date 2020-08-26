import 'package:flutter/material.dart';
import 'package:minicrm/util/resource/my_color.dart';
import 'package:minicrm/util/resource/my_style.dart';

class MiniInfoCard extends StatelessWidget {

  String title;
  String persen;
  IconData icon;
  String value;
  String target;
  Color warna;

  MiniInfoCard(this.title, this.persen, this.icon, this.value, this.target, this.warna);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10.0),
      width: (size.width - 45)/2,
      decoration: BoxDecoration(
        color: MyColor.warnaKonten,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4.5,
            spreadRadius: 1.0,
          )
        ],
      ),
      child: Column(
        children: <Widget>[
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: textStyle.copyWith(fontSize: 15, color: MyColor.warnaTema),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Icon(
                    icon,
                    color: warna,
                    size: 18,
                  ),
                  Text(
                    persen,
                    overflow: TextOverflow.ellipsis,
                    style: textStyle.copyWith(fontSize: 13, color: warna),
                  ),
                ],
              ),
              Text(
                value,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 25, color: MyColor.warnaTema, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Target :",
                overflow: TextOverflow.ellipsis,
                style: textStyle.copyWith(fontSize: 13, color: MyColor.warnaTema),
              ),
              Text(
                target,
                overflow: TextOverflow.ellipsis,
                style: textStyle.copyWith(fontSize: 13, color: MyColor.warnaTema),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
