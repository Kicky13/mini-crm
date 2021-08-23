import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:minicrm/screen/customer/customer_screen.dart';
import 'package:minicrm/app/my_router.dart';
import 'package:http/http.dart' as http;
import 'package:minicrm/api/api_config.dart';
import 'package:minicrm/helper/database_helper.dart';
import 'package:minicrm/util/resource/my_color.dart';
import 'package:minicrm/util/my_pref.dart';
import 'package:minicrm/model/customer/customer.dart';
import 'package:minicrm/model/customer/mcustomer.dart';

abstract class CustomerScreenModel extends State<CustomerScreen> {
  var token = MyPref.getCRMToken();
  List<Customer> customer = List<Customer>();
  bool isLoading = false;

  pressKunjungan(BuildContext context, Map currCustomer) {
    print(currCustomer);
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(
                  right: -40,
                  top: -40,
                  child: InkResponse(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: CircleAvatar(
                      child: Icon(Icons.close),
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
                Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                              flex: 4,
                              fit: FlexFit.loose,
                              child: Icon(Icons.add)),
                          Flexible(
                              flex: 6,
                              fit: FlexFit.loose,
                              child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Tambah Kunjungan',
                                    textAlign: TextAlign.left,
                                  )))
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${currCustomer['iDCUSTOMER']}: ${currCustomer['nAMACUSTOMER']}',
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.left,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 1),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Flexible(
                                      flex: 2,
                                      fit: FlexFit.loose,
                                      child: Image.asset(
                                          "assets/icons/pelanggan.png")),
                                  Flexible(
                                    flex: 4,
                                    fit: FlexFit.loose,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 4),
                                      padding: EdgeInsets.all(7),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            currCustomer['nAMAPEMILIK'],
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(currCustomer['tELPPEMILIK'],
                                              style: TextStyle(fontSize: 12)),
                                          Text(
                                            currCustomer['aLAMAT'],
                                            style: TextStyle(fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: TextFormField(showCursor: true),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: TextFormField(showCursor: true),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 2,
                              fit: FlexFit.loose,
                              child: RaisedButton(
                                color: MyColor.warnaAbuMuda,
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(color: MyColor.warnaPutih),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.loose,
                              child: RaisedButton(
                                color: MyColor.warnaMerah,
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  'Save',
                                  style: TextStyle(color: MyColor.warnaPutih),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  void initState() {
    super.initState();
  }
}
