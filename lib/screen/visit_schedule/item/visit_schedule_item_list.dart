import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum STATUS { CHECKIN, CHECKOUT, COMPLETE }

class VisitScheduleItemList extends StatelessWidget {
  final String kdCustomer;
  final String customer;
  final String pemilik;
  final String phone;
  final String phone2;
  final String ketKunjungan;
  final String address;
  final STATUS status;
  final bool needSync;
  final bool local;

  VisitScheduleItemList(
      {this.kdCustomer,
      this.customer,
      this.pemilik,
      this.phone,
      this.phone2,
      this.ketKunjungan,
      this.address,
      this.status,
      this.needSync = false,
      this.local = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${kdCustomer ?? ""}: ${customer ??""}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[900],
                    fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5, top: 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                        height: 50,
                        image: AssetImage("assets/images/shop.png")),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, top: 3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${pemilik ?? "-"}"),
                            Text(
                              "${phone ?? "-"}",
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              "${ketKunjungan ?? "-"}",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                    status == STATUS.COMPLETE ? Icon(
                      Icons.assignment_turned_in,
                      size: 40,
                      color: Colors.green,
                    ) : MaterialButton(
                      height: 30,
                      onPressed: () {},
                      child: Text(
                        status == STATUS.CHECKIN ? "Checkin" : "Checkout",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      color: status == STATUS.CHECKIN ? Colors.blue : Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(child: Text("${address ?? "-"}", style: TextStyle(fontSize: 12),)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: local ? Icon(
                      Icons.cloud_off,
                      size: 16,
                      color: Colors.red,
                    ) : Icon(
                      Icons.cloud_queue,
                      size: 16,
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: !needSync ? Icon(
                      Icons.cloud_done,
                      size: 16,
                      color: Colors.green,
                    ) : Icon(
                    Icons.cloud_upload,
                    size: 16,
                    color: Colors.red,
                  ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
//      decoration: BoxDecoration(
//        boxShadow: [
//          BoxShadow(
//            color: Colors.grey.withOpacity(0.1),
//            spreadRadius: 1,
//            blurRadius: 1,
//            offset: Offset(0, 5), // changes position of shadow
//          ),
//        ],
//      ),
    );
  }
}
