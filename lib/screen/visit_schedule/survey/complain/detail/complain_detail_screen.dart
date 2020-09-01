import 'package:flutter/material.dart';
import 'package:minicrm/helper/bottom_action.dart';
import 'package:minicrm/screen/visit_schedule/survey/complain/detail/complain_detail_screen_model.dart';

class ComplainDetailScreen extends StatefulWidget {
  @override
  _ComplainDetailScreenState createState() => _ComplainDetailScreenState();
}

class _ComplainDetailScreenState extends ComplainDetailScreenModel {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Keluhan Pelanggan"),
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
          return SwitchListTile(
            contentPadding: EdgeInsets.only(left: 10),
            title: Text('Semen Membatu'),
            value: true,
            activeColor: Colors.green,
            onChanged: (bool value) {
              setState(() {});
            },
          );
        });
  }
}
