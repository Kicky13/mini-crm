import 'package:flutter/material.dart';
import 'package:minicrm/util/resource/my_color.dart';
import 'package:minicrm/util/resource/my_style.dart';

class ProfileButton extends StatelessWidget {
  final String text, res;
  final Function press;

  ProfileButton(
    this.text,
    this.press,
    this.res,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          color: MyColor.warnaMerah,
          onPressed: press,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                  width: size.width * 0.8,
                  alignment: Alignment.center,
                  child:Text(
                    text,
                    style: whiteSmallText.copyWith(fontSize: 18, fontWeight: FontWeight.w700),
                  )
              ),
              Image.asset(
                res,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              )
            ],
          ),
          shape: RoundedRectangleBorder(side: BorderSide(
              color: MyColor.warnaMerah,
              width: 1,
              style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(18))
      ),
    );
  }
}
