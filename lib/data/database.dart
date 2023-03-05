
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

class LocalDataBase {
  final int _version = 3;

  final Map<String, List<String>> _scripts = {
    '1' : ['CREATE TABLE pref_master(pref_id INTEGER, pref_name TEXT, pref_kana TEXT);'],
    '2' : ['CREATE TABLE city_master(city_id INTEGER, city_name TEXT, city_kana TEXT);'],
    '3' : ['CREATE TABLE area_master(area_id INTEGER, area_name TEXT, area_kana TEXT);'],
  };

  Future<Database> database() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'dev.db'),
      version: _version,
      onCreate: (db, version) async {
        _executeScript(db, 0, version);
        await db.close();
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        _executeScript(db, oldVersion, newVersion);
        await db.close();
      },
    );
  }

  void _executeScript(Database db, int previousVersion, int oldVersion) async {
    for(int i = previousVersion + 1; i <= oldVersion; i++){
      List<String>? queries = _scripts[i.toString()];
      if(queries != null){
        for (String query in queries) {
          await db.execute(query);
        }
      }
    }
  }
}
