import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:minicrm/screen/dashboard/dashboard_screen.dart';
import 'package:minicrm/screen/download/download_screen.dart';
import 'package:minicrm/screen/navbar/cus_tab_bar.dart';
import 'package:minicrm/screen/profile/profile_screen.dart';
import 'package:minicrm/screen/riwayat/riwayat_screen.dart';
import 'package:minicrm/screen/sync/sync_screen.dart';
import 'package:minicrm/util/resource/my_color.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int selectedIndex = 0;
  static const List<Widget> _screens = <Widget>[
    DashboardScreen(),
    CustomeTabBar("Sync & Download", ["Sync", "Download"], [SyncScreen(), DownloadScreen()]),
    RiwayatScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: _screens.elementAt(selectedIndex),
        ),
      ),
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.red[400],
          selectedItemBorderColor: Colors.red[400],
          selectedItemBackgroundColor: MyColor.warnaTema,
          selectedItemIconColor: MyColor.warnaKonten,
          selectedItemLabelColor: MyColor.warnaKonten,
          showSelectedItemShadow: false,
          barHeight: 55,
          unselectedItemIconColor: MyColor.warnaKonten,
          unselectedItemLabelColor: MyColor.warnaKonten,
        ),
        selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: 'Beranda',
          ),
          FFNavigationBarItem(
            iconData: Icons.sync,
            label: 'Sync',
          ),
          FFNavigationBarItem(
            iconData: Icons.history,
            label: 'Riwayat',
          ),
          FFNavigationBarItem(
            iconData: Icons.person,
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
