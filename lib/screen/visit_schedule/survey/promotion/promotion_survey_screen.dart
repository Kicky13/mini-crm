import 'package:flutter/material.dart';
import 'package:minicrm/screen/visit_schedule/item/product_survey_item_list.dart';
import 'package:minicrm/screen/visit_schedule/survey/promotion/detail/promotion_detail_screen.dart';
import 'package:minicrm/screen/visit_schedule/survey/promotion/promotion_survey_screen_model.dart';

class PromotionSurveyScreen extends StatefulWidget {
  @override
  _PromotionSurveyScreenState createState() => _PromotionSurveyScreenState();
}

class _PromotionSurveyScreenState extends PromotionSurveyScreenModel {
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
            icon: PS_ICON.ERROR,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PromotionDetailScreen()));
            },
            iconTap: () {},
          );
        });
  }
}
