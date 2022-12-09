import 'package:app_receitas/modelsDataBase/ingredients.dart';
import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import '../database/db.dart';

class IngredientsRepository extends ChangeNotifier {
  late Database db;
  final List<Ingredients> _ingredients = [];

  List<Ingredients> get ingredients => _ingredients;

  insertIngredients(Ingredients ingredients, int id) async {
    db = await DB.instance.database;
    db.insert('ingrediente', {
      'id': null,
      'nomeIngrediente': ingredients.nome,
      'qtdIngrediente': ingredients.qtd,
      'geladeira_id': id
       });
    notifyListeners();
  }
}