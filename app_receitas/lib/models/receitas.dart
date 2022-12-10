import 'package:app_receitas/models/ingrediente_receita.dart';
import 'package:app_receitas/models/modo_preparo_receita.dart';

class Receita{
  int id;
  String nome;
  ModoPreparoReceita modoDePreparo;
  List<IngredienteReceita> ingredientes;
  String foto;

  Receita({
    required this.id,
    required this.nome,
    required this.modoDePreparo,
    required this.foto,
    required this.ingredientes,
  });
}