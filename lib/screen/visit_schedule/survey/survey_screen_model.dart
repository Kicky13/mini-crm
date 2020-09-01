import 'package:flutter/material.dart';
import 'package:minicrm/screen/visit_schedule/survey/complain/complain_survey_screen.dart';
import 'package:minicrm/screen/visit_schedule/survey/product/product_survey_screen.dart';
import 'package:minicrm/screen/visit_schedule/survey/promotion/promotion_survey_screen.dart';
import 'package:minicrm/screen/visit_schedule/survey/survey_screen.dart';

abstract class SurveyScreenModel extends State<SurveyScreen>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  List<Widget> tabs = [
    ProductSurveyScreen(),
    ComplainSurveyScreen(),
    PromotionSurveyScreen()
  ];

  @override
  void initState() {
    super.initState();
  }

  onSelectionUpdated(index) {
    setState(() {
      currentIndex = index;
    });
  }
}
