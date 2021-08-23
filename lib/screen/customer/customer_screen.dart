import 'package:flutter/material.dart';
import 'package:minicrm/helper/header.dart';
import 'package:minicrm/model/customer/customer.dart';
import 'package:minicrm/screen/customer/customer_screen_model.dart';
import 'package:minicrm/helper/database_helper.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key key}) : super(key: key);

  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends CustomerScreenModel {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var _kunjunganDialog = AlertDialog(
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
                        flex: 4, fit: FlexFit.loose, child: Icon(Icons.add)),
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
                    children: [
                      Text('1000010XXX: Tb. Maju Jaya Makmur I'),
                      Container(
                        margin: EdgeInsets.only(top: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Flexible(
                                flex: 2,
                                fit: FlexFit.loose,
                                child:
                                    Image.asset("assets/icons/pelanggan.png")),
                            Flexible(
                              flex: 4,
                              fit: FlexFit.loose,
                              child: Container(
                                margin: EdgeInsets.only(left: 4),
                                padding: EdgeInsets.all(7),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Anonim',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text('087263827212',
                                        style: TextStyle(fontSize: 12)),
                                    Text(
                                      'Alamat Toko / Pelanggan',
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
                          color: Colors.redAccent,
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            'Cancel',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: RaisedButton(
                          color: Colors.redAccent,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            'Save',
                            style: TextStyle(color: Colors.white),
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

    var _listCustomer = Container(
        height: size.height - (size.height / 8),
        color: Colors.grey[200],
        child: FutureBuilder<List>(
          future: CustomerDB.getData(),
          builder: (context, snapshot) {
            return snapshot.hasData
                ? ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (_, int index) {
                      return Card(
                          margin: EdgeInsets.all(10),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    '${snapshot.data[index]["iDCUSTOMER"]} : ${snapshot.data[index]["nAMACUSTOMER"].toString()}',
                                    textAlign: TextAlign.left,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                          flex: 2,
                                          fit: FlexFit.loose,
                                          child: Image.asset(
                                            "assets/icons/pelanggan.png",
                                            width: size.width / 6,
                                          )),
                                      Flexible(
                                        flex: 2,
                                        fit: FlexFit.loose,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              snapshot.data[index]
                                                  ['nAMAPEMILIK'],
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Text(
                                              snapshot.data[index]
                                                      ['tELPPEMILIK']
                                                  .toString(),
                                              textAlign: TextAlign.left,
                                              textDirection: TextDirection.ltr,
                                            )
                                          ],
                                        ),
                                      ),
                                      Flexible(
                                        flex: 2,
                                        fit: FlexFit.tight,
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          onPressed: () => pressKunjungan(
                                              context, snapshot.data[index]),
                                          child: Text(
                                            'Kunjungan',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          color: Colors.redAccent,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                        flex: 4,
                                        fit: FlexFit.loose,
                                        child: Container(
                                          child: Text(
                                              snapshot.data[index]['aLAMAT']),
                                        )),
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.loose,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            snapshot.data[index]['isLocal'] != 0
                                                ? "assets/icons/phone-check.png"
                                                : "assets/icons/phone-warning.png",
                                            width: 20,
                                          ),
                                          Image.asset(
                                            snapshot.data[index]['needSync'] !=
                                                    1
                                                ? "assets/icons/cloud-v.png"
                                                : "assets/icons/cloud-x.png",
                                            width: 20,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ));
                    })
                : Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ));

    return Scaffold(
      body: Header(
          "Pelanggan",
          // (customer != null && customer.isNotEmpty && customer.length > 0)
          _listCustomer,
          // : CircularProgressIndicator(),
          isIconBirth: false,
          birthCount: 0,
          isBack: true),
    );
  }
}
