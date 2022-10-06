import 'package:app_receitas/models/ingredientes.dart';

class IngredienteReceita{
  Ingrediente ingrediente;
  double quantidade;
  String uMedida;

  IngredienteReceita({
    required this.ingrediente,
    required this.quantidade,
    required this.uMedida
  });
}
