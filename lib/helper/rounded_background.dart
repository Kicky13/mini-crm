import 'package:flutter/material.dart';
import 'package:minicrm/util/resource/my_color.dart';

class RoundedBackground extends StatelessWidget {
  @override
  Color warna;
  Widget widget;
  bool isUseIcon;
  double padding;
  final Function press;

  RoundedBackground(this.widget, this.warna, this.padding, this.press, {this.isUseIcon = false});

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: warna,
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4.5,
              spreadRadius: 1.0,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            widget,
            if (isUseIcon)
              Icon(
                Icons.keyboard_arrow_down,
                color: MyColor.warnaKonten,
                size: 16,
              ),
          ],
        ),
      ),
    );
  }
}
