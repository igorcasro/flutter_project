import 'package:app_receitas/database/db.dart';
import 'package:app_receitas/repositorie/ingredients_recipes_repository.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import '../modelsDataBase/recipes.dart';

class RecipeRepository extends ChangeNotifier {
  late Database db;
  late IngredientsRecipesRepository irr;
  final List<Recipes> _recipes = [];

  List<Recipes> get recipes => _recipes;

  // RecipeRepositorie(){
  //   _initReository();
  // }

  // _initReository ( )async{
  //   await getRecipes();
  // }

  // getRecipes() async{
  //   db = await DB.instance.database;
  //   List recipes = await db.query('recipes');
  //   _recipes.addAll(recipes);
  //   notifyListeners();
  // }

  insertRecipes(Recipes recipes) async {
    db = await DB.instance.database;
    db.insert('recipes', {
      "id": null,
      "name": recipes.name,
      'preparation_mode': recipes.preparationMode,
      'preparation_time': recipes.preparationTime,
      'photo_path': recipes.photoPath,
      'date': recipes.date,
      'person_id': recipes.person.id
    });
    List consult = await db.query('recipes');
    int idRecipes = consult.last['id'];

    for (int i = 0; i < recipes.ingredients.length; i++) {
      irr.insertIngredientsRecipes(recipes.ingredients[i], idRecipes);
    }

    notifyListeners();
  }
}
