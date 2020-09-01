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

  static Future<List> getData() async {
    final db = await CustomerDB.openDB();
    var result = await db.query('customer');

    return result.toList();
  }
}
