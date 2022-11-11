import 'package:app_receitas/modelsDataBase/ingredients.dart';

class IngredientsGelator {
  Ingredients ingredient;
  double? amount;
  String? measurement;

  IngredientsGelator(
      {required this.ingredient,
      required this.amount,
      required this.measurement});
}