
import 'package:sqflite/sqflite.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../data/database.dart';

part 'pref_repository.freezed.dart';
part 'pref_repository.g.dart';

@freezed
class Pref with _$Pref {
  const factory Pref({
    @JsonKey(name: 'pref_id') required int prefId,
    @JsonKey(name: 'pref_name') required String prefName,
    @JsonKey(name: 'pref_kana') required String prefKana,
  }) = _Pref;

  factory Pref.fromJson(Map<String, Object?> json)
      => _$PrefFromJson(json);
}

class PrefRepository {

  LocalDataBase localDataBase = LocalDataBase();

  Future<Database> _prefTable() async {
    Database prefTable = await localDataBase.database();
    return prefTable;
  }

  Future<void> insertPref(Pref pref) async {
    Database prefDatabase = await _prefTable();
    await prefDatabase.insert(
      "pref_master",
      pref.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    await prefDatabase.close();
    return;
  }

  Future<List<Pref>> getPref() async {
    Database prefDatabase = await _prefTable();
    final List<Map<String, dynamic>> prefs = await prefDatabase.query('pref_master');
    return List.generate(prefs.length, (i) {
      return Pref(
        prefId: prefs[i]['pref_id'],
        prefName: prefs[i]['pref_name'],
        prefKana: prefs[i]['pref_kana'],
      );
    });
  }

  Future<void> updatePref(Pref pref) async {
    Database prefDatabase = await _prefTable();
    await prefDatabase.update(
      'pref_master',
      pref.toJson(),
      where: "pref_id = ?",
      whereArgs: [pref.prefId],
      conflictAlgorithm: ConflictAlgorithm.fail,
    );
  }

  Future<void> deletePref(int prefId) async {
    Database prefDatabase = await _prefTable();
    await prefDatabase.delete(
      'pref_master',
      where: "pref_id = ?",
      whereArgs: [prefId],
    );
  }
}