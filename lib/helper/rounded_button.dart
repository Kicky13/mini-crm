import 'package:flutter/material.dart';
import 'package:minicrm/util/resource/my_color.dart';
import 'package:minicrm/util/resource/my_style.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.textColor = Colors.white,
    this.color = MyColor.warnaMerah,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      width: size.width * 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: titleTextStyle.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
