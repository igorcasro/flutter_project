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
      join(await getDatabasesPath(), 'data.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, versao) async {
    await db.execute(_person);
    await db.execute(_recipes);
    await db.execute(_ingredients);
    await db.execute(_ingredientsRecipes);
    await db.execute(_gelator);
    await db.execute(_ingredientsGelator);
  }

  String get _person => '''
    CREATE TABLE person (
      id TEXT PRIMARY KEY,
      username TEXT,
      email TEXT,
      password TEXT,
      telephone TEXT,
    );
  ''';

// tipo INT na data salva em miliseguntos

  String get _recipes => '''
    CREATE TABLE recipes (
      id INTEGER PRIMARY KEY AUTO_INCREMENT,
      name TEXT,
      preparation_mode TEXT,
      preparation_time TEXT,
      date_post INT,
      photo_path TEXT,
      person_id TEXT,
      FOREIGN KEY (person_id) REFERENCES _person (id) 
    );
  ''';

  String get _ingredients => '''
    CREATE TABLE ingredients(
      id INTEGER PRIMARY KEY AUTO_INCREMENT,
      name TEXT,
      photo_path TEXT,
    );
  ''';

  String get _ingredientsRecipes => '''
    CREATE TABLE ingredients_recipes(
      recipe_id  INTEGER PRIMARY KEY,
      ingredient_id INTEGER PRIMARY KEY,
      amount_ingredient TEXT,
      measurement TEXT,
      FOREIGN KEY (recipe_id) REFERENCES _recipes (id),
      FOREIGN KEY (ingredient_id) REFERENCES _ingredients (id)
    );
  ''';

  String get _gelator => '''
    CREATE TABLE gelator(
      id PRIMARY KEY AUTO_INCREMENT,
      person_id TEXT,  
    );
  ''';
  String get _ingredientsGelator => '''
    CREATE TABLE ingredients_gelator(
      gelator_id INTEGER PRIMARY KEY,
      ingredient_id INTEGER PRIMARY KEY,
      amount_ingredient TEXT,
      measurement TEXT,
      FOREIGN KEY (gelador_id) REFERENCES _gelator (id),
      FOREIGN KEY (ingredient_id) REFERENCES _ingredients (id)
    );
  ''';
}
