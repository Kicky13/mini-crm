import 'package:flutter/material.dart';
import 'package:minicrm/util/resource/my_color.dart';

class ActionText extends StatelessWidget {
  final String text1;
  final String text2;
  final Function press;

  const ActionText({
    Key key,
    this.text1,
    this.text2,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyle(color: MyColor.kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            text2,
            style: TextStyle(
              color: MyColor.kPrimaryColor,
              fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    );
  }
}
