import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text("Jadwal Kunjungan"),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CalendarCarousel<Event>(
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
              height: 410.0,
              selectedDateTime: currentDate,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              "List Kunjungan:",
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 10),
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
    );
  }
}
