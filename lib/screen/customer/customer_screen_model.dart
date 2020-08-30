import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:minicrm/screen/customer/customer_screen.dart';
import 'package:minicrm/app/my_router.dart';
import 'package:http/http.dart' as http;
import 'package:minicrm/api/api_config.dart';
import 'package:minicrm/helper/database_helper.dart';
import 'package:minicrm/util/my_pref.dart';
import 'package:minicrm/model/customer/customer.dart';
import 'package:minicrm/model/customer/mcustomer.dart';

abstract class CustomerScreenModel extends State<CustomerScreen> {
  var token = MyPref.getForcaToken();
  List<Customer> customer = List<Customer>();
  bool isLoading = false;

  getDataCustomer() async {
    List<Customer> dataDB = await CustomerDB.getData();
    // setState(() {
    //   customer = dataDB;
    // });
    print(dataDB.length.toString());
    if (customer.length > 0) {
      setState(() {
        isLoading = false;
      });
      print(customer.length.toString());
    }
  }

  downloadDatabase() async {
    var sendRequest = await http.post(APIConfig.downloadCustomer,
        headers: {"token": token},
        body: {"id_sales": "3360", "start": "0", "limit": "100"});
    Map res = jsonDecode(sendRequest.body);
    if (res['status'].toString() == 'success') {
      setState(() {
        customer = MCustomer.fromJson(res).data;
      });
      print(jsonEncode(customer));
      // dataCustomer
      //     .map((e) => {
      //           CustomerDB.insert('customer', {
      //             'iDCUSTOMER': e['ID_CUSTOMER'],
      //             'kODECUSTOMER': e['KODE_CUSTOMER'].toString(),
      //             'nAMACUSTOMER': e['NAMA_TOKO'].toString(),
      //             'aLAMAT': e['ALAMAT'].toString(),
      //             'nAMAPEMILIK': e['NAMA_PEMILIK'].toString(),
      //             'kTPPEMILIK': e['NOKTP_PEMILIK'].toString(),
      //             'kETERANGAN': e['KETERANGAN'].toString(),
      //             'kODEPOS': e['KODE_POS'].toString(),
      //             'kAPASITASTOKO': e['ID_CUSTOMER'].toString(),
      //             'tELPTOKO': e['TELP_TOKO'].toString(),
      //             'tELPPEMILIK': e['TELP_PEMILIK'].toString(),
      //             'iDDISTRIBUTOR': e['ID_DISTRIBUTOR'],
      //             'nAMADISTRIBUTOR': e['NAMA_DISTRIBUTOR'].toString(),
      //             'iDPROVINSI': e['ID_PROVINSI'],
      //             'nAMAPROVINSI': e['NAMA_PROVINSI'].toString(),
      //             'iDDISTRIK': e['ID_DISTRIK'],
      //             'nAMADISTRIK': e['NAMA_DISTRIK'].toString(),
      //             'iDAREA': e['ID_AREA'],
      //             'nAMAAREA': e['NAMA_AREA'].toString(),
      //             'iDKECAMATAN': e['ID_KECAMATAN'],
      //             'nAMAKECAMATAN': e['NAMA_KECAMATAN'].toString(),
      //             'lATITUDE': e['LATITUDE'].toString(),
      //             'lONGITUDE': e['LONGITUDE'].toString(),
      //             'sTATUSTOKO': e['STATUS_TOKO'],
      //             'gROUPCUSTOMER': e['GROUP_CUSTOMER'].toString(),
      //             'tGLLAHIR': e['TGL_LAHIR'].toString(),
      //             'bARIS': e['BARIS'].toString(),
      //             'uSERNAME': e['USERNAME'].toString(),
      //             'kOORDINATLOCK': e['KOORDINAT_LOCK'].toString(),
      //             'kAPASITASZAK': e['KAPASITAS_ZAK'].toString(),
      //             'kAPASITASJUAL': e['KAPASITAS_JUAL'].toString(),
      //             'kAPASITASTON': e['KAPASITAS_TON'].toString(),
      //             'rEGION': e['REGION'].toString(),
      //             'needSync': 0,
      //             'isShowBirthday': 1,
      //             'needSyncLocation': 0,
      //             'isDelete': 0,
      //             'isLocal': 1,
      //             'isProgress': 0
      //           })
      //         })
      //     .toList();
      // getDataCustomer();
    } else {
      print('Failed to connect into server');
    }
  }

  @override
  void initState() {
    downloadDatabase();
    super.initState();
  }

  pressKunjungan() async {
//    downloadDatabase();
    getDataCustomer();
//    Navigator.pushNamed(context, Sync);
  }
}
