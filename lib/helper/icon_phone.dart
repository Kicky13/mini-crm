import 'package:flutter/material.dart';

class IconPhone extends StatelessWidget {
  final double width;
  final double height;
  final bool success;
  IconPhone({this.width, this.height, this.success = false});
  @override
  Widget build(BuildContext context) {
    return Image(
      image: success
          ? AssetImage("assets/icons/phone-check-48px.png")
          : AssetImage("assets/icons/phone-warning-48px.png"),
      width: width ?? 14,
      height: height ?? 14,
    );
  }
}
