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
  var token = MyPref.getCRMToken();
  List<Customer> customer = List<Customer>();
  bool isLoading = false;

  pressKunjungan() {}

  // Future<List<Customer>> getDataCustomer() async {
  //   final dataCustomer = await CustomerDB.getData();
  //   setState(() {
  //     dataCustomer
  //         .map((e) => customer.add(Customer(
  //             iDCUSTOMER: e['iDCUSTOMER'],
  //             kODECUSTOMER: e['kODECUSTOMER'],
  //             nAMATOKO: e['nAMATOKO'],
  //             aLAMAT: e['aLAMAT'],
  //             nAMAPEMILIK: e['nAMAPEMILIK'],
  //             nOKTPPEMILIK: e['kTPPEMILIK'],
  //             kETERANGAN: e['kETERANGAN'],
  //             kODEPOS: e['kODEPOS'],
  //             kAPASITASTOKO: e['kAPASITASTOKO'],
  //             tELPTOKO: e['tELPTOKO'],
  //             tELPPEMILIK: e['tELPPEMILIK'],
  //             iDDISTRIBUTOR: e['iDDISTRIBUTOR'],
  //             nAMADISTRIBUTOR: e['nAMADISTRIBUTOR'],
  //             iDPROVINSI: e['iDPROVINSI'],
  //             nAMAPROVINSI: e['nAMAPROVINSI'],
  //             iDDISTRIK: e['iDDISTRIK'],
  //             nAMADISTRIK: e['nAMADISTRIK'],
  //             iDAREA: e['iDAREA'],
  //             nAMAAREA: e['nAMAAREA'],
  //             iDKECAMATAN: e['iDKECAMATAN'],
  //             nAMAKECAMATAN: e['nAMAKECAMATAN'],
  //             lATITUDE: e['lATITUDE'],
  //             lONGITUDE: e['lONGITUDE'],
  //             sTATUSTOKO: e['sTATUSTOKO'],
  //             gROUPCUSTOMER: e['gROUPCUSTOMER'],
  //             tGLLAHIR: e['tGLLAHIR'],
  //             bARIS: e['bARIS'],
  //             kOORDINATLOCK: e['kOORDINATLOCK'],
  //             kAPASITASZAK: e['kAPASITASZAK'],
  //             kAPASITASJUAL: e['kAPASITASJUAL'],
  //             kAPASITASTON: e['kAPASITASTON'],
  //             rEGION: e['rEGION'])))
  //         .toList();
  //   });
  //   return customer;
  // }

  @override
  void initState() {
    super.initState();
  }
}
