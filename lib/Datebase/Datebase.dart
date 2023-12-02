import 'package:sqflite/sqflite.dart';
import 'Model.dart';

import 'package:path/path.dart';

class PhonesDatabase {
  static final PhonesDatabase instance = PhonesDatabase._init();

  static Database? _database;

  PhonesDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('PhonesDatabase_11.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 5, onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE PhonesDatabase8(id TEXT, AlarmTime TEXT, CallOnElectricity TEXT, Contacts TEXT, Language TEXT, MoodAlarm TEXT, Name TEXT, OnPhones TEXT, OpratorSim TEXT, Password TEXT, PeriodicBatteryReport TEXT, PeriodicInventoryReport TEXT, Relleh TEXT, Zone TEXT, phone TEXT, Anten Text, Charge Text, CountConuntect Text, Countremote Text, Speaker Text, StatusNetwork Text, StatusRelleh Text, VoltAc Text, Voltbatry Text, contacts1 TEXT, contacts2 TEXT, contacts3 TEXT, contacts4 TEXT, contacts5 TEXT, contacts6 TEXT,contacts7 TEXT,contacts8 ,TEXT,contacts9 TEXT,contacts10 TEXT,zoonOnOff TEXT,nameZoon TEXT,remoteOnOff TEXT)",
      );
    });
  }

  Future<void> insertDog(phones PhonesDatabase1) async {
    final db = await instance.database;

    await db.insert(
      'PhonesDatabase8',
      PhonesDatabase1.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    print('start');
/*     Get.find<controllertext>(tag: 'first').notes.clear();
    Get.find<controllertext>(tag: 'first').notes = await instance.notes(); */
  }

  Future<List<phones>> phoness() async {
    final Database db = await instance.database;

    final List<Map<String, dynamic>> maps = await db.query('PhonesDatabase8');

    return List.generate(maps.length, (i) {
      return phones(
          id: maps[i]['id'],
          AlarmTime: maps[i]['AlarmTime'],
          CallOnElectricity: maps[i]['CallOnElectricity'],
          Contacts: maps[i]['Contacts'],
          Language: maps[i]['Language'],
          MoodAlarm: maps[i]['MoodAlarm'],
          Name: maps[i]['Name'],
          OnPhones: maps[i]['OnPhones'],
          OpratorSim: maps[i]['OpratorSim'],
          Password: maps[i]['Password'],
          PeriodicBatteryReport: maps[i]['PeriodicBatteryReport'],
          PeriodicInventoryReport: maps[i]['PeriodicInventoryReport'],
          Relleh: maps[i]['Relleh'],
          Zone: maps[i]['Zone'],
          phone: maps[i]['phone'],
          Anten: maps[i]['Anten'],
          Charge: maps[i]['Charge'],
          CountConuntect: maps[i]['CountConuntect'],
          Countremote: maps[i]['Countremote'],
          Speaker: maps[i]['Speaker'],
          StatusNetwork: maps[i]['StatusNetwork'],
          StatusRelleh: maps[i]['StatusRelleh'],
          VoltAc: maps[i]['VoltAc'],
          Voltbatry: maps[i]['Voltbatry'],
          contacts1: maps[i]['contacts1'],
          contacts2: maps[i]['contacts2'],
          contacts3: maps[i]['contacts3'],
          contacts4: maps[i]['contacts4'],
          contacts5: maps[i]['contacts5'],
          contacts6: maps[i]['contacts6'],
          contacts10: maps[i]['contacts10'],
          contacts7: maps[i]['contacts7'],
          contacts8: maps[i]['contacts8'],
          contacts9: maps[i]['contacts9'],
          zoonOnOff: maps[i]['zoonOnOff'],
          remoteOnOff: maps[i]['remoteOnOff'],
          nameZoon: maps[i]['nameZoon']);
    });
  }

  Future<void> deletephone(phones phones1) async {
    final db = await database;

    await db.delete(
      'PhonesDatabase8',
      where: "Name = ?",
      whereArgs: [phones1.Name],
    );
/*     Get.find<controllertext>(tag: 'first').notes.clear();
    Get.find<controllertext>(tag: 'first').notes = await instance.notes(); */
  }

  Future<void> updatephone(phones phones1) async {
    final db = await database;

    await db.update(
      'PhonesDatabase8',
      phones1.toMap(),
      where: "id = ?",
      whereArgs: [phones1.id],
    );
  }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}
