import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:minicrm/model/visit_schedule/visit_customer.dart';
import 'package:minicrm/screen/visit_schedule/example/example_tab.dart';
import 'package:minicrm/screen/visit_schedule/item/customer_item.dart';
import 'package:minicrm/screen/visit_schedule/survey/survey_screen.dart';
import 'package:minicrm/screen/visit_schedule/visit_schedule_screen.dart';

abstract class VisitScheduleScreenModel extends State<VisitScheduleScreen> {
  var currentDate = DateTime.now();
  Position currentPosition;
  bool locationServiceEnabled;
  double distanceInMeters;

  @override
  void initState() {
    listVisit = listVisitMap.map((e) => VisitCustomer.fromJsonMap(e)).toList();
    _getCurrentLocation();
    super.initState();
  }

  _getCurrentLocation() async {
    await getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      print("$runtimeType: ${position.latitude}");
      setState(() {
        currentPosition = position;
      });
    }).catchError((e) {
      print(e);
    });
  }

  showDialogCheckIn(VisitCustomer data) {
    distanceInMeters = GeolocatorPlatform.distanceBetween(
      currentPosition.latitude,
      currentPosition.longitude,
      double.parse(data.LATITUDE),
      double.parse(data.LONGITUDE),
    );
    showDialog(
        context: context,
        child: AlertDialog(
          title: Row(
            children: [
              Image(
                  width: 20,
                  height: 20,
                  image: AssetImage("assets/icons/map-48px.png")),
              SizedBox(
                width: 10,
              ),
              Text("Checkin")
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _customer(),
              _codeVisit("44513"),
              _buttonCheckin(),
              SizedBox(
                height: 10,
              ),
              Text("${(distanceInMeters/1000).toStringAsFixed(2)} Km",
                  style: TextStyle(fontSize: 13, color: Colors.black)),
              SizedBox(
                height: 5,
              ),
              Text("Max: 50km",
                  style: TextStyle(fontSize: 13, color: Colors.green)),
              SizedBox(
                height: 5,
              ),
              Text("GPS Accuracy: 100 meter",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
            ],
          ),
        ));
  }

  _customer() {
    return CustomerItem(
      kdCustomer: "100002234",
      customer: "Maju Jaya Abadi Sentosa",
      pemilik: "Sutejo",
      phone: "089134234245",
      address: "Jl. Gajayana Malang asasdf asdf",
    );
  }

  _buttonCheckin() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: _buttonCard(
                image: "assets/icons/visit-cancel-128px.png",
                text: "Batal\nKunjungan",
                textColor: Colors.red,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ExampleTab()));
                }),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
              child: _buttonCard(
                  image: "assets/icons/visit-checkin-128px.png",
                  text: "Checkin\n ",
                  textColor: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SurveyScreen()));
                  }))
        ],
      ),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 0.5, color: Colors.grey[400]))),
    );
  }

  _buttonCard(
      {String image, String text, Function onPressed, Color textColor}) {
    return Card(
      elevation: 8,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 60,
                height: 60,
                image: AssetImage(image),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "$text",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: textColor),
              )
            ],
          ),
        ),
      ),
    );
  }

  _codeVisit(String code) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(bottom: 10, top: 10),
            child: Text(
              "Kode Kunjungan",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _generateCodeWidget(code),
          ),
        ],
      ),
    );
  }

  _generateCodeWidget(String code) {
    var result = List<Widget>();
    code.runes.forEach((rune) {
      var char = String.fromCharCode(rune);
      result.add(_containerCode(char));
    });

    return result;
  }

  _containerCode(String text) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(8)),
    );
  }

  List<VisitCustomer> listVisit;
  var listVisitMap = [
    {
      "ID_KUNJUNGAN_CUSTOMER": "112239",
      "ID_USER": "3380",
      "JENIS_USER": "SALES DISTRIBUTOR",
      "NAMA_SALES": "SIA.8713618.S03",
      "ID_CUSTOMER": "100069163",
      "NM_CUSTOMER": "AR RISQI UD ",
      "TELP_CUSTOMER": "0.087752077877",
      "ALAMAT": "JL ADIRASA NO 19 KOLOR KEC SUMENEP KOTA SUMENEP\r\n  RT0  RW0",
      "NAMA_PEMILIK": "ROHANA ",
      "CHECKIN_LATITUDE": null,
      "CHECKIN_LONGITUDE": null,
      "CHECKIN_TIME": null,
      "CHECKOUT_LATITUDE": null,
      "CHECKOUT_LONGITUDE": null,
      "CHECKOUT_TIME": null,
      "TGL_RENCANA_KUNJUNGAN": "2020-09-01",
      "SELESAI": null,
      "MULAI": null,
      "WAKTU_KUNJUNGAN": null,
      "JAM": null,
      "MENIT": null,
      "KETERANGAN": "canvasing",
      "SEQUENCE": null,
      "ORDER_SEMEN": null,
      "LONGITUDE": "112.6460253",
      "LATITUDE": "-7.2762606",
      "ALASAN_KUNJUNGAN": null
    },
    {
      "ID_KUNJUNGAN_CUSTOMER": "112261",
      "ID_USER": "3380",
      "JENIS_USER": "SALES DISTRIBUTOR",
      "NAMA_SALES": "SIA.8713618.S03",
      "ID_CUSTOMER": "100073215",
      "NM_CUSTOMER": "SINAR JAYA 2 UD ",
      "TELP_CUSTOMER": "081938010068",
      "ALAMAT":
          "JL RY ARANG BAJA RAJA DS AENG BAJA RAJA KEC BLUTO KOTA SUMENEP\r\n  RT0  RW0",
      "NAMA_PEMILIK": "EDI SUGIANTO ",
      "CHECKIN_LATITUDE": null,
      "CHECKIN_LONGITUDE": null,
      "CHECKIN_TIME": null,
      "CHECKOUT_LATITUDE": null,
      "CHECKOUT_LONGITUDE": null,
      "CHECKOUT_TIME": null,
      "TGL_RENCANA_KUNJUNGAN": "2020-09-01",
      "SELESAI": null,
      "MULAI": null,
      "WAKTU_KUNJUNGAN": null,
      "JAM": null,
      "MENIT": null,
      "KETERANGAN": "canvasing",
      "SEQUENCE": null,
      "ORDER_SEMEN": null,
      "LONGITUDE": "112.728483",
      "LATITUDE": "-7.253247",
      "ALASAN_KUNJUNGAN": null
    },
    {
      "ID_KUNJUNGAN_CUSTOMER": "106171",
      "ID_USER": "3380",
      "JENIS_USER": "SALES DISTRIBUTOR",
      "NAMA_SALES": "SIA.8713618.S03",
      "ID_CUSTOMER": "100010015",
      "NM_CUSTOMER": "LOGAM JAYA ",
      "TELP_CUSTOMER": "0323326264",
      "ALAMAT": "JL.H.AGUS SALIM ",
      "NAMA_PEMILIK": "HENDRA",
      "CHECKIN_LATITUDE": null,
      "CHECKIN_LONGITUDE": null,
      "CHECKIN_TIME": null,
      "CHECKOUT_LATITUDE": null,
      "CHECKOUT_LONGITUDE": null,
      "CHECKOUT_TIME": null,
      "TGL_RENCANA_KUNJUNGAN": "2020-09-01",
      "SELESAI": null,
      "MULAI": null,
      "WAKTU_KUNJUNGAN": null,
      "JAM": null,
      "MENIT": null,
      "KETERANGAN": "Canvassing",
      "SEQUENCE": null,
      "ORDER_SEMEN": null,
      "LONGITUDE": "112.6057843",
      "LATITUDE": "-7.2366592",
      "ALASAN_KUNJUNGAN": null
    },
    {
      "ID_KUNJUNGAN_CUSTOMER": "112254",
      "ID_USER": "3380",
      "JENIS_USER": "SALES DISTRIBUTOR",
      "NAMA_SALES": "SIA.8713618.S03",
      "ID_CUSTOMER": "100010755",
      "NM_CUSTOMER": "ABI MANYU. TK ",
      "TELP_CUSTOMER": null,
      "ALAMAT": "Desa Pagar batu - saronggi ",
      "NAMA_PEMILIK": "RUSLAN",
      "CHECKIN_LATITUDE": null,
      "CHECKIN_LONGITUDE": null,
      "CHECKIN_TIME": null,
      "CHECKOUT_LATITUDE": null,
      "CHECKOUT_LONGITUDE": null,
      "CHECKOUT_TIME": null,
      "TGL_RENCANA_KUNJUNGAN": "2020-09-01",
      "SELESAI": null,
      "MULAI": null,
      "WAKTU_KUNJUNGAN": null,
      "JAM": null,
      "MENIT": null,
      "KETERANGAN": "canvasing",
      "SEQUENCE": null,
      "ORDER_SEMEN": null,
      "LONGITUDE": "112.666848",
      "LATITUDE": "-7.283453",
      "ALASAN_KUNJUNGAN": null
    }
  ];
}
