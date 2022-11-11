import 'package:app_receitas/modelsDataBase/ingredients_recipes.dart';
import 'package:app_receitas/modelsDataBase/person.dart';

class Recipes {
  int? id;
  String? name;
  String? preparationMode;
  List<IngredientsRecipes> ingredients;
  String? preparationTime;
  String photoPath;
  int? date;
  Person person;

  Recipes(
      {required this.name,
      required this.preparationMode,
      required this.preparationTime,
      required this.photoPath,
      required this.date,
      required this.ingredients,
      required this.person});
}
