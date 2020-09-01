import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minicrm/helper/icon_cloud.dart';
import 'package:minicrm/helper/icon_phone.dart';
import 'package:minicrm/util/resource/my_color.dart';

enum STATUS_VISIT { CHECKIN, CHECKOUT, COMPLETE, CANCELLED }

class VisitScheduleItemList extends StatelessWidget {
  final String kdCustomer;
  final String customer;
  final String pemilik;
  final String phone;
  final String phone2;
  final String ketKunjungan;
  final String address;
  final STATUS_VISIT status;
  final bool needSync;
  final bool local;
  final Function btnPressed;
  final Function onPressed;

  VisitScheduleItemList({
    this.kdCustomer,
    this.customer,
    this.pemilik,
    this.phone,
    this.phone2,
    this.ketKunjungan,
    this.address,
    this.status,
    this.needSync = false,
    this.local = false,
    this.btnPressed,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Card(
        child: InkWell(
          onTap: onPressed,
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${kdCustomer ?? ""}: ${customer ?? ""}",
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
                              Text(
                                "${pemilik ?? "-"}",
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "${phone ?? "-"}",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 13),
                              ),
                              Text(
                                "${ketKunjungan ?? "-"}",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ),
                      status == STATUS_VISIT.COMPLETE
                          ? Image(
                              image: AssetImage(
                                  "assets/icons/assignment-green-48px.png"),
                              width: 44,
                              height: 44,
                            )
                          : MaterialButton(
                              height: 30,
                              onPressed: btnPressed,
                              child: Text(
                                status == STATUS_VISIT.CANCELLED
                                    ? "Cancel"
                                    : status == STATUS_VISIT.CHECKIN
                                        ? "Checkin"
                                        : "Checkout",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              color: status == STATUS_VISIT.CANCELLED
                                  ? Colors.grey
                                  : status == STATUS_VISIT.CHECKIN
                                      ? Colors.blue[600]
                                      : MyColor.warnaMerah,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "${address ?? "-"}",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12),
                    )),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: local
                            ? IconPhone(success: false)
                            : IconPhone(success: true)),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: needSync
                            ? IconCloud(success: false)
                            : IconCloud(success: true)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
