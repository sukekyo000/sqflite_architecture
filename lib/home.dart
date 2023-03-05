
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import 'data/database.dart';
import 'repository/area_repository.dart';
import 'repository/city_repository.dart';
import 'repository/pref_repository.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () async {
                  // final localDataBase = LocalDataBase();
                  // Database database = await localDataBase.database();
                  // print(await database.getVersion());

                  // final prefRepository = PrefRepository();
                  // List<Pref> prefs = await prefRepository.getPref();
                  // print(prefs);
                  
                  // final cityRepository = CityRepository();
                  // List<City> cities = await cityRepository.getCity();
                  // print(cities);

                  // final areaRepository = AreaRepository();
                  // List<Area> areas = await areaRepository.getArea();
                  // print(areas);

                },
                child: const Text("テスト")
            )
          ],
        ),
      ),
    );
  }
}
