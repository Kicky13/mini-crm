import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:minicrm/screen/download/download_screen.dart';
import 'package:minicrm/api/api_config.dart';
import 'package:http/http.dart' as http;
import 'package:minicrm/helper/database_helper.dart';
import 'package:minicrm/util/my_pref.dart';

abstract class DownloadScreenModel extends State<DownloadScreen> {
  var token = MyPref.getCRMToken();

  @override
  void initState() {
    super.initState();
  }

  pressCheckData() async {
    final dataList = await CustomerDB.getData();
    print(jsonEncode(dataList));
  }

  pressDownloadCustomer() async {
    print(APIConfig.downloadCustomer);
    var sendHttp = await http.post(APIConfig.downloadCustomer, headers: {
      "token": token,
      "Content-Type": "application/x-www-form-urlencoded"
    }, body: {
      "id_sales": "3360",
      "start": "0",
      "limit": "100"
    });
    Map res = jsonDecode(sendHttp.body);
    if (res['status'].toString() == 'success') {
      List dataCustomer = res['data'];
      dataCustomer.map((e) {
        CustomerDB.insert('customer', {
          'iDCUSTOMER': e['ID_CUSTOMER'],
          'kODECUSTOMER': e['KODE_CUSTOMER'].toString(),
          'nAMACUSTOMER': e['NAMA_TOKO'].toString(),
          'aLAMAT': e['ALAMAT'].toString(),
          'nAMAPEMILIK': e['NAMA_PEMILIK'].toString(),
          'kTPPEMILIK': e['NOKTP_PEMILIK'].toString(),
          'kETERANGAN': e['KETERANGAN'].toString(),
          'kODEPOS': e['KODE_POS'].toString(),
          'kAPASITASTOKO': e['KAPASITAS_TOKO'].toString(),
          'tELPTOKO': e['TELP_TOKO'].toString(),
          'tELPPEMILIK': e['TELP_PEMILIK'].toString(),
          'iDDISTRIBUTOR': e['ID_DISTRIBUTOR'],
          'nAMADISTRIBUTOR': e['NAMA_DISTRIBUTOR'].toString(),
          'iDPROVINSI': e['ID_PROVINSI'],
          'nAMAPROVINSI': e['NAMA_PROVINSI'].toString(),
          'iDDISTRIK': e['ID_DISTRIK'],
          'nAMADISTRIK': e['NAMA_DISTRIK'].toString(),
          'iDAREA': e['ID_AREA'],
          'nAMAAREA': e['NAMA_AREA'].toString(),
          'iDKECAMATAN': e['ID_KECAMATAN'],
          'nAMAKECAMATAN': e['NAMA_KECAMATAN'].toString(),
          'lATITUDE': e['LATITUDE'].toString(),
          'lONGITUDE': e['LONGITUDE'].toString(),
          'sTATUSTOKO': e['STATUS_TOKO'],
          'gROUPCUSTOMER': e['GROUP_CUSTOMER'].toString(),
          'tGLLAHIR': e['TGL_LAHIR'].toString(),
          'bARIS': e['BARIS'].toString(),
          'uSERNAME': e['USERNAME'].toString(),
          'kOORDINATLOCK': e['KOORDINAT_LOCK'].toString(),
          'kAPASITASZAK': e['KAPASITAS_ZAK'].toString(),
          'kAPASITASJUAL': e['KAPASITAS_JUAL'].toString(),
          'kAPASITASTON': e['KAPASITAS_TON'].toString(),
          'rEGION': e['REGION'].toString(),
          'needSync': 0,
          'isShowBirthday': 1,
          'needSyncLocation': 0,
          'isDelete': 0,
          'isLocal': 1,
          'isProgress': 0
        });
      }).toList();
      print('Insert DB done');
    } else {
      print('Failed to Connect server');
    }
  }
}
