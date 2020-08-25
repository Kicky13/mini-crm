import 'package:sqflite/sqflite.dart' as sqlite;
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart' as path;

const customerInitiates = [
  '''CREATE TABLE IF NOT EXISTS customer (
      idCustomer INTEGER PRIMARY KEY AUTOINCREMENT,
      kodeCustomer TEXT,
      namaCustomer TEXT,
      alamat TEXT,
      namaPemilik TEXT,
      ktpPemilik TEXT,
      keterangan TEXT,
      kodePos TEXT,
      kapasitasToko TEXT,
      telpToko TEXT,
      telpPemilik TEXT,
      idDistributor INTEGER,
      namaDistributor TEXT,
      idProvinsi INTEGER,
      namaProvinsi TEXT,
      idDistrik INTEGER,
      namaDistrik TEXT,
      idArea INTEGER,
      namaArea TEXT,
      idKecamatan INTEGER,
      namaKecamatan TEXT,
      latitude TEXT,
      longitude TEXT,
      statusToko INTEGER,
      groupCustomer TEXT,
      tglLahir TEXT,
      baris TEXT,
      username TEXT,
      koordinatLock TEXT,
      kapasitasZak TEXT,
      kapasitasJual TEXT,
      kapasitasTon TEXT,
      region TEXT,
      idSales INTEGER,
      needSync INTEGER,
      isShowBirthday INTEGER,
      needSyncLocation INTEGER,
      isDelete INTEGER,
      isLocal INTEGER,
      isProgress INTEGER
    )'''
];

class CustomerDB {
  static Future<Database> openDB() async {
    final dbPath = await sqlite.getDatabasesPath();
    return sqlite.openDatabase(path.join(dbPath, 'miniCrm.db'),
        onCreate: (db, version) {
      customerInitiates.forEach((query) async => await db.execute(query));
      print('Imported');
    }, version: 1);
  }

  static Future<void> insert(String table, Map<String, Object> data) async {
    final db = await CustomerDB.openDB();
    db.insert(table, data, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<Map<String, dynamic>>> getData(String table) async {
    final db = await CustomerDB.openDB();
    return db.query(table);
  }
}
