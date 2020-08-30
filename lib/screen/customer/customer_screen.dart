import 'package:flutter/material.dart';
import 'package:minicrm/helper/header.dart';
import 'package:minicrm/screen/customer/customer_screen_model.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key key}) : super(key: key);

  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends CustomerScreenModel {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var _listCustomer = Container(
        height: size.height - (size.height / 4),
        color: Colors.white70,
        child: ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) {
              return Card(
                  margin: EdgeInsets.all(10),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '100010XXX : Tb. Maju Jaya Makmur I',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Anonym',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      '08763568XXX',
                                      textAlign: TextAlign.left,
                                      textDirection: TextDirection.ltr,
                                    )
                                  ],
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: FlatButton(
                                      onPressed: () => pressKunjungan(),
                                      color: Colors.redAccent,
                                      child: Text(
                                        'Kunjungan',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                                flex: 4,
                                fit: FlexFit.loose,
                                child: Container(
                                  child: Text('Alamat Toko / Pelanggan'),
                                )),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.loose,
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/icons/phone-check.png",
                                    width: 20,
                                  ),
                                  Image.asset(
                                    "assets/icons/criss-cross.png",
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
            }));

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
