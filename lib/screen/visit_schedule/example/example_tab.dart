import 'package:flutter/material.dart';
import 'package:toggle_bar/toggle_bar.dart';

class ExampleTab extends StatefulWidget {
  @override
  _ExampleTabState createState() => _ExampleTabState();
}

class _ExampleTabState extends State<ExampleTab>
    with SingleTickerProviderStateMixin {
  final List<Widget> myTabs = [
    Tab(text: 'Produk'),
    Tab(text: 'Keluhan'),
    Tab(text: 'Promosi'),
  ];

  int currentIndex = 0;
  TabController tabController;

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customer"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: _initWidget(),
    );
  }

  _initWidget() {
    return Container(
      child: ListView(
        children: [
          Column(
            children: [
              TabBar(
                controller: tabController,
                labelColor: Colors.redAccent,
                tabs: myTabs,
              ),
              Center(
                child: [Tab1(), Tab2()][tabController.index],
              ),
              ToggleBar(
                labels: ["Tab 1", "Tab 2"],
                backgroundColor: Colors.red,
                selectedTabColor: Colors.blue,
                textColor: Colors.white,
                labelTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                onSelectionUpdated: (index) =>
                    setState(() => currentIndex = index),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: [Tab1(), Tab2()].elementAt(currentIndex),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Tab 1"),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        print("$runtimeType: resumed");
        break;
      case AppLifecycleState.inactive:
        print("$runtimeType: inactive");
        break;
      case AppLifecycleState.paused:
        print("$runtimeType: paused");
        break;
      case AppLifecycleState.detached:
        print("$runtimeType: detached");
        break;
    }
  }
}

class Tab2 extends StatefulWidget {
  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Tab 2"),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        print("$runtimeType: resumed");
        break;
      case AppLifecycleState.inactive:
        print("$runtimeType: inactive");
        break;
      case AppLifecycleState.paused:
        print("$runtimeType: paused");
        break;
      case AppLifecycleState.detached:
        print("$runtimeType: detached");
        break;
    }
  }
}
