
import 'package:sqflite/sqflite.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../data/database.dart';

part 'area_repository.freezed.dart';
part 'area_repository.g.dart';

@freezed
class Area with _$Area {
  const factory Area({
    @JsonKey(name: 'area_id') required int areaId,
    @JsonKey(name: 'area_name') required String areaName,
    @JsonKey(name: 'area_kana') required String areaKana,
  }) = _Area;

  factory Area.fromJson(Map<String, Object?> json)
      => _$AreaFromJson(json);
}

class AreaRepository {

  LocalDataBase localDataBase = LocalDataBase();

  Future<Database> _areaTable() async {
    Database areaTable = await localDataBase.database();
    return areaTable;
  }

  Future<void> insertArea(Area area) async {
    Database areaDatabase = await _areaTable();
    await areaDatabase.insert(
      "area_master",
      area.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    await areaDatabase.close();
    return;
  }

  Future<List<Area>> getArea() async {
    Database areaDatabase = await _areaTable();
    final List<Map<String, dynamic>> areas = await areaDatabase.query('area_master');
    return List.generate(areas.length, (i) {
      return Area(
        areaId: areas[i]['area_id'],
        areaName: areas[i]['area_name'],
        areaKana: areas[i]['area_kana'],
      );
    });
  }

  Future<void> updateArea(Area area) async {
    Database areaDatabase = await _areaTable();
    await areaDatabase.update(
      'area_master',
      area.toJson(),
      where: "area_id = ?",
      whereArgs: [area.areaId],
      conflictAlgorithm: ConflictAlgorithm.fail,
    );
  }

  Future<void> deleteArea(int areaId) async {
    Database areaDatabase = await _areaTable();
    await areaDatabase.delete(
      'area_master',
      where: "area_id = ?",
      whereArgs: [areaId],
    );
  }
}