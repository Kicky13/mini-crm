import 'package:flutter/material.dart';
import 'package:minicrm/util/resource/my_color.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextInputType keyboardType;
  final ValueChanged<String> onChanged;
  final bool isIconVisibility;
  final bool isLeftIconVisibility;
  final bool isPass;
  final Function press;

  const CustomTextField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.keyboardType = TextInputType.text,
    this.isIconVisibility = false,
    this.isLeftIconVisibility = true,
    this.isPass = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 55,
      padding: const EdgeInsets.only(
          left: 30.0, right: 30.0, top: 5.0, bottom: 10.0),
      child: TextField(
        onChanged: onChanged,
        obscureText: isPass,
        keyboardType: keyboardType,
        decoration: InputDecoration(
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
          enabledBorder: new UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: MyColor.TextLoginInputUnderlineColor),
          ),
          contentPadding: new EdgeInsets.only( top:7),
          prefixIcon: isLeftIconVisibility ? Icon(icon, color: MyColor.black) : null,
        ),
      ),
    );
  }
}
