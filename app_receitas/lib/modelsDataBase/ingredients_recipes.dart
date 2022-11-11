// ignore_for_file: file_names
import 'package:app_receitas/modelsDataBase/ingredients.dart';

class IngredientsRecipes {
  Ingredients ingredient;
  double? amount;
  String? measurement;

  IngredientsRecipes(
      {required this.ingredient, 
      required this.amount,
      required this.measurement});
}
