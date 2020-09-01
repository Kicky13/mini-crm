import 'package:flutter/material.dart';
import 'package:minicrm/screen/statistic/statistic_screen_model.dart';

class StatisticScreen extends StatefulWidget {
  @override
  _StatisticScreenState createState() => _StatisticScreenState();
}

class _StatisticScreenState extends StatisticScreenModel {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      color: Color(0xFFF4343C),
                      child: Text(
                        "Kunjungan Customer",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        textAlign: TextAlign.center,
                      )),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 8,
                                      child: Icon(
                                        Icons.arrow_drop_up,
                                        size: 60,
                                        color: Colors.green,
                                      ),
                                    ),
                                    Positioned(
                                      top: 45,
                                      child: Text(
                                        "100%",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                "97",
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Target:",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "1000",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Color(0xFFF4343C), width: 1)),
            ),
          ],
        )),
      ),
    );
  }
}
