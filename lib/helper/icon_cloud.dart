import 'package:flutter/material.dart';

class IconCloud extends StatelessWidget {
  final double width;
  final double height;
  final bool success;
  IconCloud({this.width, this.height, this.success = false});
  @override
  Widget build(BuildContext context) {
    return Image(
      image: success
          ? AssetImage("assets/icons/cloud-v-48px.png")
          : AssetImage("assets/icons/cloud-x-48px.png"),
      width: width ?? 14,
      height: height ?? 14,
    );
  }
}