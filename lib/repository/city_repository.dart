
import 'package:sqflite/sqflite.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../data/database.dart';

part 'city_repository.freezed.dart';
part 'city_repository.g.dart';

@freezed
class City with _$City {
  const factory City({
    @JsonKey(name: 'city_id') required int cityId,
    @JsonKey(name: 'city_name') required String cityName,
    @JsonKey(name: 'city_kana') required String cityKana,
  }) = _City;

  factory City.fromJson(Map<String, Object?> json)
      => _$CityFromJson(json);
}

class CityRepository {

  LocalDataBase localDataBase = LocalDataBase();

  Future<Database> _cityTable() async {
    Database cityTable = await localDataBase.database();
    return cityTable;
  }

  Future<void> insertCity(City city) async {
    Database cityDatabase = await _cityTable();
    await cityDatabase.insert(
      "city_master",
      city.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    await cityDatabase.close();
    return;
  }

  Future<List<City>> getCity() async {
    Database cityDatabase = await _cityTable();
    final List<Map<String, dynamic>> citys = await cityDatabase.query('city_master');
    return List.generate(citys.length, (i) {
      return City(
        cityId: citys[i]['city_id'],
        cityName: citys[i]['city_name'],
        cityKana: citys[i]['city_kana'],
      );
    });
  }

  Future<void> updateCity(City city) async {
    Database cityDatabase = await _cityTable();
    await cityDatabase.update(
      'city_master',
      city.toJson(),
      where: "city_id = ?",
      whereArgs: [city.cityId],
      conflictAlgorithm: ConflictAlgorithm.fail,
    );
  }

  Future<void> deleteCity(int cityId) async {
    Database cityDatabase = await _cityTable();
    await cityDatabase.delete(
      'city_master',
      where: "city_id = ?",
      whereArgs: [cityId],
    );
  }
}