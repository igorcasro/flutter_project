// ignore_for_file: depend_on_referenced_packages

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  //construtor com acesso privado
  DB._();
  //criar uma instacia de DB
  static final DB instance = DB._();
  //criar a instancia do sqlite
  static Database? _database;

  get database async {
    if (_database != null) return _database;
    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'myfriedge.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, versao) async {
    await db.execute(_geladeira);
  }

  String get _geladeira=> '''
    CREATE TABLE recipes (
      id INTEGER PRIMARY KEY AUTO_INCREMENT,
      nomeIngrediente TEXT,
      qtdIngrediente INT,
    );
  ''';

}
