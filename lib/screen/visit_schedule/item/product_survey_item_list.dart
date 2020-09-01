import 'package:flutter/material.dart';
import 'package:minicrm/helper/icon_cloud.dart';
import 'package:minicrm/helper/icon_phone.dart';
import 'package:minicrm/util/resource/my_color.dart';

enum PS_ICON { DELETE, SUCCESS, ERROR }

class ProductSurveyItemList extends StatelessWidget {
  final String title;
  final bool needSync;
  final bool local;
  final PS_ICON icon;
  final Function iconTap;
  final Function onPressed;

  ProductSurveyItemList(
      {this.title,
      this.needSync = false,
      this.local = false,
      this.icon = PS_ICON.DELETE,
      this.iconTap,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: Card(
        elevation: 6,
        child: InkWell(
          onTap: onPressed,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Image(
                    width: 32,
                    height: 32,
                    image: AssetImage("assets/icons/cement-48px.png"),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$title",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              "Lihat Detail",
                              style: TextStyle(
                                  fontSize: 11,
                                  color: MyColor.warnaMerah),
                            )),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: local
                                    ? IconPhone(success: false)
                                    : IconPhone(success: true)),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: needSync
                                    ? IconCloud(success: false)
                                    : IconCloud(success: true)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                icon == PS_ICON.DELETE
                    ? IconButton(
                        icon: Icon(Icons.delete_forever),
                        color: MyColor.warnaMerah,
                        onPressed: iconTap)
                    : (icon == PS_ICON.SUCCESS
                        ? InkWell(
                            onTap: iconTap,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 11),
                              child: Image(
                                image: AssetImage(
                                    "assets/icons/checklist-green-48px.png"),
                                width: 26,
                                height: 26,
                              ),
                            ))
                        : InkWell(
                            onTap: iconTap,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 11),
                              child: Image(
                                image: AssetImage(
                                    "assets/icons/checklist-red-48px.png"),
                                width: 26,
                                height: 26,
                              ),
                            )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
