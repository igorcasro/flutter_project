import 'package:app_receitas/modelsDataBase/ingredients.dart';
import 'package:app_receitas/repositorie/ingredients_repository.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import '../database/db.dart';
import '../modelsDataBase/gelator.dart';

class GelatorRepository extends ChangeNotifier {
  late Database db;
  late IngredientsRepository ingredients;
  final List<Gelator> _gelator = [];

  List<Gelator> get gelator => _gelator;

  insertGelator(Gelator gelator) async {
    db = await DB.instance.database;
    db.insert('geladeira', {'id': null });

    List consult = await db.query('gelator');
    int idGelator = consult.last['id'];

    for (int i = 0; i < gelator.ingredients.length; i++) {
      ingredients.insertIngredients(
          gelator.ingredients[i], idGelator);
    }
    notifyListeners();
  }
}
