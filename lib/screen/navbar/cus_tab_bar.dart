import 'package:flutter/material.dart';
import 'package:minicrm/helper/header.dart';
import 'package:minicrm/util/resource/my_color.dart';
import 'package:minicrm/util/resource/my_style.dart';
import 'package:toggle_bar/toggle_bar.dart';

class CustomeTabBar extends StatefulWidget {
  final String title;
  final List<String> labels;
  final List<Widget> screens;

  const CustomeTabBar(this.title, this.labels, this.screens, {Key key}) : super(key: key);

  @override
  _CustomeTabBarState createState() => _CustomeTabBarState();
}

class _CustomeTabBarState extends State<CustomeTabBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget isi = Column(
      children: [
        ToggleBar(
          labels: widget.labels,
          backgroundColor: MyColor.warnaAbuMuda,
          selectedTabColor: MyColor.warnaMerah,
          textColor:MyColor.warnaHitam,
          labelTextStyle: titleTextStyle.copyWith(fontSize: 15),
          onSelectionUpdated: (index) =>
              setState(() => currentIndex = index),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: widget.screens.elementAt(currentIndex),
        )
      ],
    );

    return Header(
      widget.title,
      isi,
      isIconBirth: true,
      birthCount: 2,
      isBack: false,
    );
  }
}
