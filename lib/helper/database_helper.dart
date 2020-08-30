import 'package:sqflite/sqflite.dart' as sqlite;
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart' as path;
import 'package:minicrm/util/resource/my_string.dart';
import 'package:minicrm/model/customer/customer.dart';

class CustomerDB {
  static Future<Database> openDB() async {
    final dbPath = await sqlite.getDatabasesPath();
    return sqlite.openDatabase(path.join(dbPath, 'miniCrm.db'),
        onCreate: (db, version) {
      db.execute(MyString.CUSTOMER_TABLE);
      print('Imported');
    }, version: 1);
  }

  static Future<void> insert(String table, Map<String, Object> data) async {
    final db = await CustomerDB.openDB();
    db.insert(table, data, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<Customer>> getData() async {
    final db = await CustomerDB.openDB();
    final List<Map<String, dynamic>> dataList = await db.query('customer');
    return List.generate(dataList.length, (index) {
      return Customer(
        bARIS: dataList[index]['bARIS'],
        iDCUSTOMER: dataList[index]['iDCUSTOMER'],
        kODECUSTOMER: dataList[index]['kODECUSTOMER'],
        nAMATOKO: dataList[index]['nAMATOKO'],
        tELPTOKO: dataList[index]['tELPTOKO'],
        aLAMAT: dataList[index]['aLAMAT'],
        kODEPOS: dataList[index]['kODEPOS'],
        nAMAPEMILIK: dataList[index]['nAMAPEMILIK'],
        tELPPEMILIK: dataList[index]['tELPPEMILIK'],
        nOKTPPEMILIK: dataList[index]['nOKTPPEMILIK'],
        tGLLAHIR: dataList[index]['tGLLAHIR'],
        iDKECAMATAN: dataList[index]['iDKECAMATAN'],
        nAMAKECAMATAN: dataList[index]['nAMAKECAMATAN'],
        iDDISTRIK: dataList[index]['iDDISTRIK'],
        nAMADISTRIK: dataList[index]['nAMADISTRIK'],
        iDAREA: dataList[index]['iDAREA'],
        nAMAAREA: dataList[index]['nAMAAREA'],
        iDPROVINSI: dataList[index]['iDPROVINSI'],
        nAMAPROVINSI: dataList[index]['nAMAPROVINSI'],
        rEGION: dataList[index]['rEGION'],
        lONGITUDE: dataList[index]['lONGITUDE'],
        lATITUDE: dataList[index]['lATITUDE'],
        kOORDINATLOCK: dataList[index]['kOORDINATLOCK'],
        kAPASITASZAK: dataList[index]['kAPASITASZAK'],
        kAPASITASTON: dataList[index]['kAPASITASTON'],
        kAPASITASJUAL: dataList[index]['kAPASITASJUAL'],
        kAPASITASTOKO: dataList[index]['kAPASITASTOKO'],
        sTATUSTOKO: dataList[index]['sTATUSTOKO'],
        gROUPCUSTOMER: dataList[index]['gROUPCUSTOMER'],
        kETERANGAN: dataList[index]['kETERANGAN'],
        iDDISTRIBUTOR: dataList[index]['iDDISTRIBUTOR'],
        nAMADISTRIBUTOR: dataList[index]['nAMADISTRIBUTOR'],
        // nEEDSYNC: dataList[index]['nEEDSYNC'],
        // iSSHOWBIRTHDAY: dataList[index]['iSSHOWBIRTHDAY'],
        // nEEDSYNCLOCATION: dataList[index]['nEEDSYNCLOCATION'],
        // iSDELETE: dataList[index]['iSDELETE'],
        // iSLOCAL: dataList[index]['iSLOCAL'],
        // iSPROGRESS: dataList[index]['iSPROGRESS']
      );
    });
  }
}
