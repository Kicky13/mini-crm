import 'package:flutter/material.dart';
import 'package:minicrm/app/my_router.dart';
import 'package:minicrm/util/resource/my_style.dart';
import 'package:minicrm/util/resource/my_color.dart';

class Header extends StatelessWidget {
  String title;
  bool isIconBirth;
  Widget widget;
  bool isBack;
  int birthCount;
  Widget isi;

  Header(this.title, this.isi,
      {this.isIconBirth = false,
      this.birthCount = 0,
      this.isBack = true,
      this.widget});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    double appbarSize = 58.0 + statusBarHeight;

    var _appbar = Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: statusBarHeight),
      height: 58.0 + statusBarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              if (isBack)
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: MyColor.warnaKonten,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  title,
                  style: textStyle.copyWith(fontSize: 28),
                ),
              ),
            ],
          ),
          if (isIconBirth)
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, UlTah);
              },
              child: Stack(
                alignment: AlignmentDirectional(2.0, -2.0),
                children: <Widget>[
                  Icon(
                    Icons.cake,
                    color: MyColor.warnaKonten,
                  ),
                  CircleAvatar(
                    radius: 7.6,
                    backgroundColor: Colors.redAccent,
                    child: Text(
                      "$birthCount",
                      style: TextStyle(fontSize: 11.0, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );

    return Container(
      width: double.infinity,
      height: size.height,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: MyColor.warnaTema,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(45),
                      bottomLeft: Radius.circular(45),
                    )),
                child: Container(
                  padding: EdgeInsets.only(
                      left: 15, right: 15, top: appbarSize, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [if (widget != null) widget],
                  ),
                ),
              ),
              _appbar,
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: isi,
            ),
          ),
        ],
      ),
    );
  }
}
