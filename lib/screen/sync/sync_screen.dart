import 'package:flutter/material.dart';
import 'package:minicrm/screen/sync/sync_screen_model.dart';
import 'package:minicrm/helper/header.dart';
import 'package:minicrm/util/resource/my_color.dart';

class SyncScreen extends StatefulWidget {
  const SyncScreen({Key key}) : super(key: key);

  @override
  _SyncScreenState createState() => _SyncScreenState();
}

class _SyncScreenState extends SyncScreenModel {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Header(
        "Sync & Download",
        Container(
            child: Column(
          children: [
            Container(
              child: TabBar(
                tabs: tabList,
                controller: tabController,
                indicatorColor: MyColor.warnaTema,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: TabBarView(
                controller: tabController,
                children: tabList.map((Tab tab) {
                  _getIntoPage(tab);
                }).toList(),
              ),
            )
          ],
        )),
        isIconBirth: true,
        birthCount: 5,
        isBack: false,
      ),
    );
  }

  Widget _getIntoPage(Tab tab) {
    switch (tab.text) {
      case 'Sync':
        return Column(
          children: [
            Text(
              'Sync',
              style: TextStyle(color: Colors.black),
            )
          ],
        );
      case 'Download':
        return Column(
          children: [
            Text(
              'Download',
              style: TextStyle(color: Colors.black),
            )
          ],
        );
    }
  }
}
