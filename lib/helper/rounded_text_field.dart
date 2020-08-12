import 'package:flutter/material.dart';
import 'package:minicrm/util/resource/my_color.dart';

class RoundedTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final bool isIconVisibility;
  final bool isPass;
  final Function press;

  const RoundedTextField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.isIconVisibility = false,
    this.isPass = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: MyColor.kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextField(
        onChanged: onChanged,
        obscureText: isPass,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: MyColor.kPrimaryColor,
            ),
            suffixIcon: isIconVisibility
                ? IconButton(
                    icon: Icon(
                      isPass ? Icons.visibility_off : Icons.visibility,
                      color: MyColor.kPrimaryColor,
                    ),
                    onPressed: press,
                  )
                : null,
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
