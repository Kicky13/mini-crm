import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minicrm/helper/header.dart';
import 'package:minicrm/screen/visit_schedule/item/visit_schedule_item_list.dart';
import 'package:minicrm/screen/visit_schedule/visit_schedule_screen_model.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';

class VisitScheduleScreen extends StatefulWidget {
  @override
  _VisitScheduleScreenState createState() => _VisitScheduleScreenState();
}

class _VisitScheduleScreenState extends VisitScheduleScreenModel {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    double appbarSize = 58.0 + statusBarHeight;
    return Scaffold(
      body: Header(
        "Jadwal Kunjungan",
        Container(
          height: MediaQuery.of(context).size.height - appbarSize,
          child: ListView(
            children: [
              Container(
                child: CalendarCarousel<Event>(
                  headerMargin: EdgeInsets.symmetric(vertical: 0),
                  customGridViewPhysics: ScrollPhysics(),
                  onDayPressed: (DateTime date, List<Event> events) {
                    this.setState(() => currentDate = date);
                  },
                  weekendTextStyle: TextStyle(
                    color: Colors.black,
                  ),
                  headerTextStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  iconColor: Colors.blue[700],
                  todayButtonColor: Colors.blue[300],
                  selectedDayButtonColor: Color(0xFFF4343C),
                  height: 410.0,
                  selectedDateTime: currentDate,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Text(
                  "List Kunjungan:",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListView(
                padding: EdgeInsets.all(10),
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  VisitScheduleItemList(
                    kdCustomer: "100002342",
                    customer: "Jaya Abadi",
                    pemilik: "Supriyadi",
                    ketKunjungan: "Canvasing",
                    needSync: false,
                    local: true,
                    address: "Jl. Dokter Soetomo 78",
                    phone: "081912134234",
                    status: STATUS.CHECKIN,
                  ),
                  VisitScheduleItemList(
                    kdCustomer: "100002342",
                    customer: "Makmur Jaya",
                    pemilik: "Supriyadi",
                    ketKunjungan: "Canvasing",
                    needSync: true,
                    local: false,
                    address: "Jl. Dokter Soetomo 78",
                    phone: "081912134234",
                    status: STATUS.CHECKOUT,
                  ),
                  VisitScheduleItemList(
                    kdCustomer: "100002342",
                    customer: "Jaya Abadi",
                    pemilik: "Supriyadi",
                    ketKunjungan: "Canvasing",
                    needSync: true,
                    local: true,
                    address: "Jl. Dokter Soetomo 78",
                    phone: "081912134234",
                    status: STATUS.COMPLETE,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
