import 'package:flutter/material.dart';
import 'package:minicrm/helper/rounded_background.dart';
import 'package:minicrm/util/resource/my_color.dart';

class IconMenu extends StatelessWidget {
  String asset;
  String keterangan;
  Function press;

  IconMenu(this.asset, this.keterangan, this.press);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoundedBackground(
            Image.asset(
              asset,
              width: (size.width - 60) / 8,
            ),
            Colors.red[100],
            10,
            press),
        SizedBox(
          height: 10,
        ),
        Text(
          keterangan,
          style: TextStyle(
              fontSize: 14,
              color: MyColor.warnaTema,
              fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
