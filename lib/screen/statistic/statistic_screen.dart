import 'package:flutter/material.dart';
import 'package:minicrm/screen/statistic/statistic_screen_model.dart';

class StatisticScreen extends StatefulWidget {
  @override
  _StatisticScreenState createState() => _StatisticScreenState();
}

class _StatisticScreenState extends StatisticScreenModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statistik Kunjungan"),
      ),
      body: Container(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.chevron_left,
                      size: 26,
                    ),
                    onPressed: () {
                      prevDate();
                    }),
                Expanded(
                    child: Text(
                  "$currentMonth $currentYear",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )),
                IconButton(
                    icon: Icon(
                      Icons.chevron_right,
                      size: 26,
                    ),
                    onPressed: () {
                      nextDate();
                    }),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            height: 200,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    color: Colors.blue,
                    child: Text(
                      "Total Kunjungan",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.center,
                    )),
                Expanded(
                    child: Center(
                        child: Text(
                  "97",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                )))
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.blue, width: 1)),
          ),
        ],
      )),
    );
  }
}
