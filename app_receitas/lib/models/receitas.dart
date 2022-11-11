import 'package:app_receitas/models/ingrediente_receita.dart';
import 'package:app_receitas/models/modo_preparo_receita.dart';

class Receita{
  String nome;
  ModoPreparoReceita modoDePreparo;
  List<IngredienteReceita> ingredientes;
  String tempoDePreparo;
  String foto;
  String data;

  Receita({
    required this.nome,
    required this.modoDePreparo,
    required this.tempoDePreparo,
    required this.foto,
    required this.data,
    required this.ingredientes,
  });
}