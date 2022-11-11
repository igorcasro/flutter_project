// ignore_for_file: file_names

import 'package:app_receitas/modelsDataBase/ingredients_gelator.dart';
import 'package:app_receitas/repositorie/ingredients_repository.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import '../database/db.dart';

class IngredientsGelatorRepository extends ChangeNotifier {
  late Database db;
  late IngredientsRepository ingredients;

  final List<IngredientsGelator> _ingredientsGelator = [];

  List<IngredientsGelator> get ingredientsGelator => _ingredientsGelator;

  insertIngredientsGelator(
      IngredientsGelator ingredientsGelator, int idGelator) async {
    db = await DB.instance.database;
    List consult = await db.query('ingredients',
        where: '"name" = ${ingredientsGelator.ingredient.name}');

    if (consult.isNotEmpty) {
      db.insert('ingredients_gelator', {
        'gelator_id': idGelator,
        'ingredient_id': consult.first['id'],
        'amount_ingredient': ingredientsGelator.amount,
        'measurement': ingredientsGelator.measurement
      });
    } else {
      ingredients.insertIngredients(ingredientsGelator.ingredient);
      insertIngredientsGelator(ingredientsGelator, idGelator);
    }
    notifyListeners();
  }
}
