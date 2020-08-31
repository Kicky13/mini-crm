import 'package:flutter/material.dart';
import 'package:minicrm/util/resource/my_color.dart';
import 'package:minicrm/util/resource/my_style.dart';

// ignore: must_be_immutable
class MiniInfoCard extends StatelessWidget {
  String title;
  String persen;
  IconData icon;
  String value;
  String target;
  Color warna;

  MiniInfoCard(
      this.title, this.persen, this.icon, this.value, this.target, this.warna);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10.0),
      width: (size.width - 45) / 2,
      decoration: BoxDecoration(
        color: MyColor.warnaPutih,
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
            style: titleTextStyle.copyWith(fontSize: 15),
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
                    style: blackSmallText.copyWith(color: warna),
                  ),
                ],
              ),
              Text(
                value,
                overflow: TextOverflow.ellipsis,
                style: blackSmallText.copyWith(
                  fontSize: 25,
                ),
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
                style: blackSmallText,
              ),
              Text(
                target,
                overflow: TextOverflow.ellipsis,
                style: blackSmallText,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
