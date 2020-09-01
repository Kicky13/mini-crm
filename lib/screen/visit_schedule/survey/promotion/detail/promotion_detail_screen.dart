import 'package:flutter/material.dart';
import 'package:minicrm/helper/bottom_action.dart';
import 'package:minicrm/screen/visit_schedule/survey/promotion/detail/promotion_detail_screen_model.dart';

class PromotionDetailScreen extends StatefulWidget {
  @override
  _PromotionDetailScreenState createState() => _PromotionDetailScreenState();
}

class _PromotionDetailScreenState extends PromotionDetailScreenModel {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Keluhan Promosi"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body: _initWidget(),
      ),
    );
  }

  _initWidget() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: _listInput(),
        ),
        BottomAction(
          onPressed: () {},
        ),
      ],
    );
  }

  _listInput() {
    return ListView.builder(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        itemCount: 10,
        itemBuilder: (context, index) {
          return TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Tanggal Beli"),
            validator: (val) {
              if (val.length < 1)
                return 'Filed is required';
              else
                return null;
            },
          );
        });
  }
}
