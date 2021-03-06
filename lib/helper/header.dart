import 'package:flutter/material.dart';
import 'package:minicrm/app/my_router.dart';
import 'package:minicrm/util/resource/my_dimen.dart';
import 'package:minicrm/util/resource/my_style.dart';
import 'package:minicrm/util/resource/my_color.dart';

class Header extends StatelessWidget {
  String title;
  bool isIconBirth;
  Widget widget;
  bool isBack, isDisableMaxHeight;
  int birthCount;
  Widget isi;

  Header(this.title, this.isi,
      {this.isIconBirth = false,
      this.birthCount = 0,
      this.isBack = true,
      this.isDisableMaxHeight = false,
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
                    Icons.arrow_back,
                    color: MyColor.warnaPutih,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  title,
                  style: textStyleAppbar,
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
                    color: MyColor.warnaPutih,
                  ),
                  CircleAvatar(
                    radius: 7.6,
                    backgroundColor: Colors.redAccent,
                    child: Text(
                      "$birthCount",
                      style: whiteSmallText.copyWith(fontSize: 12),
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
      height: (isDisableMaxHeight)?null:size.height,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: MyColor.warnaHitam,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(MyDimen.roundedTopBar),
                      bottomLeft: Radius.circular(MyDimen.roundedTopBar),
                    )),
                child: Container(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: appbarSize),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [if (widget != null) widget],
                      ),
                      if (widget != null)
                        SizedBox(
                          height: 10,
                        ),
                    ],
                  ),
                ),
              ),
              _appbar,
            ],
          ),
          SingleChildScrollView(
            child: isi,
          ),
        ],
      ),
    );
  }
}
