import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import '../database/db.dart';
import '../modelsDataBase/ingredients.dart';

class IngredientsRepository extends ChangeNotifier {
  late Database db;
  final List<Ingredients> _ingredients = [];

  List<Ingredients> get ingredients => _ingredients;

  // IngredientsRepository(){
  //   _initRepository();
  // }

  // _initRepository() async {
  //   await getIngredients();
  // }

  // getIngredients() async {
  //   db = await DB.instance.database;
  //   List ingredient = await db.query('ingredients');
  //   _ingredients = ;
  //   notifyListeners();
  // }

  insertIngredients(Ingredients ingredients) async {
    db = await DB.instance.database;
    db.insert('ingredients', {
      'id': null,
      'name': ingredients.name,
      'photo_path': ingredients.photoPath
    });
    notifyListeners();
  }
}
