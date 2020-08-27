import 'package:flutter/material.dart';
import 'package:minicrm/screen/sync/sync_screen_model.dart';

class SyncScreen extends StatefulWidget {
  const SyncScreen({Key key}) : super(key: key);

  @override
  _SyncScreenState createState() => _SyncScreenState();
}

class _SyncScreenState extends SyncScreenModel {
  @override
  Widget build(BuildContext context) {
    return Container(height: 300, child: Text("Halaman Sync"));
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
