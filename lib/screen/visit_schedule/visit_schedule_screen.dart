import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minicrm/model/visit_schedule/visit_customer.dart';
import 'package:minicrm/screen/visit_schedule/item/visit_schedule_item_list.dart';
import 'package:minicrm/screen/visit_schedule/visit_schedule_screen_model.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:minicrm/util/resource/my_color.dart';

class VisitScheduleScreen extends StatefulWidget {
  @override
  _VisitScheduleScreenState createState() => _VisitScheduleScreenState();
}

class _VisitScheduleScreenState extends VisitScheduleScreenModel {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          title: Text("Jadwal Kunjungan"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
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
                todayButtonColor: Colors.blue[200],
                selectedDayButtonColor: MyColor.warnaMerah,
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
            ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10),
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: listVisit.length,
              itemBuilder: (context, index) {
                VisitCustomer data = listVisit[index];
                return VisitScheduleItemList(
                  kdCustomer: data.ID_CUSTOMER,
                  customer: data.NM_CUSTOMER ?? "-",
                  pemilik: data.NAMA_PEMILIK ?? "-",
                  ketKunjungan: data.KETERANGAN ?? "-",
                  needSync: false,
                  local: true,
                  address: data.ALAMAT ?? "-",
                  phone: data.TELP_CUSTOMER ?? "-",
                  status:
                      data.CHECKIN_TIME != null && data.CHECKOUT_TIME != null
                          ? STATUS_VISIT.COMPLETE
                          : data.CHECKIN_TIME != null
                              ? STATUS_VISIT.CHECKOUT
                              : STATUS_VISIT.CHECKIN,
                  btnPressed: () {
                    showDialogCheckIn(data);
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
