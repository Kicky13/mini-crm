import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minicrm/screen/visit_schedule/item/product_survey_item_list.dart';
import 'package:minicrm/screen/visit_schedule/survey/product/detail/product_detail_screen.dart';
import 'package:minicrm/screen/visit_schedule/survey/product/product_survey_screen_model.dart';

class ProductSurveyScreen extends StatefulWidget {
  @override
  _ProductSurveyScreenState createState() => _ProductSurveyScreenState();
}

class _ProductSurveyScreenState extends ProductSurveyScreenModel {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _initWidget(),
    );
  }

  var sample = [
    "Semen Gresik",
    "Semen Dynamik",
    "Semen Tiga Roda",
    "Semen Merah Putih",
    "Semen Merah Muda",
    "Semen Nusantara"
  ];
  _initWidget() {
    return ListView.builder(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        physics: ScrollPhysics(),
        itemCount: sample.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ProductSurveyItemList(
            title: sample.elementAt(index),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductDetailScreen()));
            },
            iconTap: () {},
          );
        });
  }
}
