import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:minicrm/screen/sync/sync_screen.dart';
import 'package:http/http.dart' as http;
import 'package:minicrm/api/api_config.dart';
import 'package:minicrm/helper/database_helper.dart';

abstract class SyncScreenModel extends State<SyncScreen>
    with SingleTickerProviderStateMixin {
  List<Tab> tabList = <Tab>[];
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabList.add(Tab(
      text: 'Sync',
    ));
    tabList.add(Tab(
      text: 'Download',
    ));
    tabController = TabController(vsync: this, length: tabList.length);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  pressCheckData() async {
    final dataList = await CustomerDB.getData('customer');
    print(jsonEncode(dataList));
  }

  pressDownload() async {
    print(APIConfig.downloadCustomer);
    var sendHttp = await http.post(APIConfig.downloadCustomer, headers: {
      "token": APIConfig.loginToken,
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
          'idCustomer': e['ID_CUSTOMER'],
          'kodeCustomer': e['KODE_CUSTOMER'].toString(),
          'namaCustomer': e['NAMA_TOKO'].toString(),
          'alamat': e['ALAMAT'].toString(),
          'namaPemilik': e['NAMA_PEMILIK'].toString(),
          'ktpPemilik': e['NOKTP_PEMILIK'].toString(),
          'keterangan': e['KETERANGAN'].toString(),
          'kodePos': e['KODE_POS'].toString(),
          'kapasitasToko': e['ID_CUSTOMER'].toString(),
          'telpToko': e['TELP_TOKO'].toString(),
          'telpPemilik': e['TELP_PEMILIK'].toString(),
          'idDistributor': e['ID_DISTRIBUTOR'],
          'namaDistributor': e['NAMA_DISTRIBUTOR'].toString(),
          'idProvinsi': e['ID_PROVINSI'],
          'namaProvinsi': e['NAMA_PROVINSI'].toString(),
          'idDistrik': e['ID_DISTRIK'],
          'namaDistrik': e['NAMA_DISTRIK'].toString(),
          'idArea': e['ID_AREA'],
          'namaArea': e['NAMA_AREA'].toString(),
          'idKecamatan': e['ID_KECAMATAN'],
          'namaKecamatan': e['NAMA_KECAMATAN'].toString(),
          'latitude': e['LATITUDE'].toString(),
          'longitude': e['LONGITUDE'].toString(),
          'statusToko': e['STATUS_TOKO'],
          'groupCustomer': e['GROUP_CUSTOMER'].toString(),
          'tglLahir': e['TGL_LAHIR'].toString(),
          'baris': e['BARIS'].toString(),
          'username': e['USERNAME'].toString(),
          'koordinatLock': e['KOORDINAT_LOCK'].toString(),
          'kapasitasZak': e['KAPASITAS_ZAK'].toString(),
          'kapasitasJual': e['KAPASITAS_JUAL'].toString(),
          'kapasitasTon': e['KAPASITAS_TON'].toString(),
          'region': e['REGION'].toString(),
          'idSales': e['ID_SALES'],
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
