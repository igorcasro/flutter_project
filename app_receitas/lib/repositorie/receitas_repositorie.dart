// ignore_for_file: file_names

import 'dart:convert';
import 'dart:io';

import 'package:app_receitas/models/api_recipe.dart';
import 'package:app_receitas/models/ingrediente_receita.dart';
import 'package:app_receitas/models/ingredientes.dart';
import 'package:app_receitas/models/modo_preparo_receita.dart';
import 'package:app_receitas/models/receitas.dart';
import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import 'package:http/http.dart' as http;

import '../api_constants.dart';
import '../database/db.dart';

class ReceitaRepositorie extends ChangeNotifier {
  List<Receita> _recipesList = [];
  List<Receita> get recipesList => _recipesList;
  var data = [];
  List<Recipe> results = [];

  ReceitaRepositorie(){
    //_setupRecipesTable();
  }

  _readRecipesTable() async {
    Database db = await DB.instance.database;
    List resultados = await db.query('receitas');

    _recipesList = resultados.map((linha) {
      return Receita(
        id: linha['id'],
        nome: linha['name'],
        modoDePreparo: linha['instructions'],
        foto: linha['image'],
        ingredientes: linha['extendedIngredients'],
      );
    }).toList();

    notifyListeners();
  }

   _recipesTableIsEmpty() async {
    Database db = await DB.instance.database;
    List resultados = await db.query('receitas');
    return resultados.isEmpty;
  }


    Future<List<Recipe>> getRecipeByIngredients(List<String> ingredients, {String? query}) async {
      var mappedIngredients = ingredients.join(',+');
      var url = Uri.parse('${ApiConstants.SPOON_BASE_URL}/recipes/findByIngredients?ingredients=$mappedIngredients&apiKey=${ApiConstants.SPOON_API_KEY}');
      print(url);
      final response = await http.get(url);

      try {
        var response = await http.get(url);
        if (response.statusCode == 200) {
        
          data = json.decode(response.body);
          results = data.map((e) => Recipe.fromJson(e)).toList();
          if (query!= null){
            results = results.where((element) => element.title!.toLowerCase().contains((query.toLowerCase()))).toList();
          }
          results.map((res) => res.ingredients = ingredients as String);
        } else {
          print("fetch error");
        }
      } on Exception catch (e) {
        print('error: $e');
      }
      return results;
    }
  

  _setupRecipesTable() async {
    const String table = '''
      CREATE TABLE IF NOT EXISTS receitas (
        baseId TEXT PRIMARY KEY,
        nome TEXT,
        foto TEXT,
        modoDePreparo TEXT,
        ingredientes TEXT,
      );
    ''';
    Database db = await DB.instance.database;
    await db.execute(table);
  }

  static List<Receita> listaReceitas = [
    Receita(nome:"Bolo de Fubá",
      modoDePreparo: ModoPreparoReceita(
        passosPreparo: ['1. Bata todos os ingredientes no liquidificador',
        '2. Coloque em uma forma untada e enfarinhada.',
        '3. Leve ao forno preaquecido e deixe assar, por cerca de 40 minutos.']),
      foto:'assets/images/receitas/bolo.jpg',
      ingredientes: [
        IngredienteReceita(ingrediente: Ingrediente(nome: "ovo"), quantidade: 3, uMedida: "unidades"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "açúcar"), quantidade: 2, uMedida: "xícaras de chá"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "farinha de trigo"), quantidade: 3, uMedida: "colheres"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "fubá"), quantidade: 2, uMedida: "xícaras de chá"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "óleo"), quantidade: 1/2, uMedida:"copo"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "leite"), quantidade: 1, uMedida: "copo"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "fermento"), quantidade: 1, uMedida: "colher"),
        ], id: 1),
    Receita(
      nome:"Feijoada",
      modoDePreparo: ModoPreparoReceita(passosPreparo: [''
      ,'1. Coloque as carnes de molho por 36 horas ou mais, vá trocando a água várias vezes, se for ambiente quente ou verão, coloque gelo por cima ou em camadas frias.'
      ,'2. Coloque para cozinhar a carne de porco e a linguiça',
      '3. Quando estiver mole coloque o feijão, e retire as carnes.',
      '4.Finalmente tempere o feijão.'
      ]), 
      foto:'assets/images/receitas/feijoada.jpg',
      ingredientes: [
        IngredienteReceita(ingrediente: Ingrediente(nome: "carne de porco"), quantidade: 2, uMedida: "quilos"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "feijão"), quantidade: 1, uMedida: "quilo"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "louro"), quantidade: 3, uMedida: "unidades"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "alho"), quantidade: 6, uMedida: "dentes"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "linguiça"), quantidade: 0.5, uMedida: "quilos"),

      ], id: 2),
    Receita(
      nome:"Macarronada",
      modoDePreparo: ModoPreparoReceita(passosPreparo: [
        '1. Em uma panela, coloque um fio de óleo e refogue a cebola e o alho picado.',
        '2.  Acrescente a carne e refogue até ela ficar bem cozida e dourada.',
        '3. Junte o molho, as azeitonas e tempere com sal. Deixe cozinhar por mais 5 minutos.',
        '4.  Em seguida, coloque coloque as folhinhas de manjericão e desligue o fogo.',
        '5. Sirva com o macarrão cozido (conforme as instruções da embalagem), finalize com queijo ralado.']), 
      foto:'assets/images/receitas/macarronada.jpg',
      ingredientes: [
        IngredienteReceita(ingrediente: Ingrediente(nome: "espaguete"), quantidade: 1, uMedida: "pacote"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "cane moída"), quantidade: 500, uMedida: "gramas"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "molho de tomate"), quantidade: 2, uMedida: "caixas"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "alho"), quantidade: 1, uMedida: "dente"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "cebola"), quantidade: 1, uMedida: "unidade"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "azeitona"), quantidade: 2, uMedida: "colheres de sopa"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "majericão"), quantidade: 10, uMedida: "folhas"),
      ], id: 3),
    Receita(
      nome:"Pastel",
      modoDePreparo: ModoPreparoReceita(passosPreparo: [
        '1 . Em um recipiente, coloque a farinha, o óleo, a aguardente e o sal',
        '2. Misture com a água morna.',
        '3. Mexa com as mãos, e a seguir amasse bem sobre uma superfície lisa.',
        '4. Após amassar bem, abra porções de massa com auxílio do rolo (deixe a massa bem fina) empregue o recheio.',
        '5. Una as bordas e aperte com a ponta de um garfo.',
        '6. Recheio',
        '7. Coloque a carne em uma panela e leve ao fogo',
        '8. Mexa até que fique completamente enxuta e solta.',
        '9. Feito isso, junte a manteiga, a cebola batidinha e o alho socado.',
        '10. Refogue bem, tempere com sal e pimenta-do-reino',
        '11. Acrescente as azeitonas picadinhas, os ovos em pedacinhos e boa porção de salsa e cebolinha verde cortadas bem fininhas.',
        '12. Deixe por mais uns 2 a 3 minutos no fogo e coloque para esfriar.',

        ]), 
      foto:'assets/images/receitas/pastel.jpg',
      ingredientes: [
        IngredienteReceita(ingrediente: Ingrediente(nome: "farinha de trigo"), quantidade: 500, uMedida: "gramas"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "óleo"), quantidade: 1, uMedida: "litro"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "aguardente"), quantidade: 1, uMedida: "colher"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "carne moída"), quantidade: 250, uMedida: "gramas"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "ovos"), quantidade: 2, uMedida: "unidades"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "cebola"), quantidade: 1, uMedida: "unidade"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "alho"), quantidade: 1, uMedida: "dente"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "manteiga"), quantidade: 1, uMedida: "colher"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "azeitona"), quantidade: 100, uMedida: "gramas"),
      ], id: 4,
      ),
    Receita(
      nome:"Pizza",
      modoDePreparo:ModoPreparoReceita(passosPreparo: [
        '1. Espalha a massa de tomate sobre a massa pronta',
        '2. Cubra toda a pizza com o queijo',
        '3. Coloque toda a calabresa cortada sobre a pizza',
        '4. Leve ao forno por cerca de 15 minutos, observe se todo o queijo derreteu e está pronta!',
        ]),
      foto:'assets/images/receitas/pizza.jpg',
      ingredientes: [
        IngredienteReceita(ingrediente: Ingrediente(nome: "massa pronta"), quantidade: 1, uMedida: "unidade"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "massa de tomate"), quantidade: 85, uMedida: "gramas"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "quejo prato"), quantidade: 300, uMedida: "gramas"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "calabreza"), quantidade: 200, uMedida: "gramas"),
      ], id: 5),
    Receita(
      nome:"Prato Feito",
      modoDePreparo:ModoPreparoReceita(passosPreparo: [
      '1. Cozinhe o arroz e o feijão',
      '2 . Frite a carne e o ovo',
      '3. Monte a salada']), 
      foto:'assets/images/receitas/pratofeito.jpg',
      ingredientes: [
      IngredienteReceita(ingrediente: Ingrediente(nome: "azeitona"), quantidade: 100, uMedida: "gramas"),
      IngredienteReceita(ingrediente: Ingrediente(nome: "arroz"), quantidade: 100, uMedida: "gramas"),
      IngredienteReceita(ingrediente: Ingrediente(nome: "feijão"), quantidade: 100, uMedida: "gramas"),
      IngredienteReceita(ingrediente: Ingrediente(nome: "carne"), quantidade: 200, uMedida: "gramas"),
      IngredienteReceita(ingrediente: Ingrediente(nome: "salada"), quantidade: 100, uMedida: "gramas"),
      ], id: 6),
    Receita(
      nome:"Purê de Batatas",
      modoDePreparo:ModoPreparoReceita(passosPreparo: [
        '1. Cozinhe as batatas e amasse-as.',
        '2. Em uma panela, junte a batata e a manteiga, mexa um pouco.',
        '3. Acrescente o caldo de galinha picadinho e o creme de leite, mexendo até que o caldo de galinha tenha se dissolvido.',
        '4. Experimente para verificar o sabor, se precisar coloque sal, se achar que precisa ficar mais mole um pouquinho é só colocar um pouquinho de leite.',
        '5. Desligue e sirva.']), 
      foto:'assets/images/receitas/pure.jpg',
      ingredientes: [
        IngredienteReceita(ingrediente: Ingrediente(nome: "batatas"), quantidade: 1, uMedida: "quilo"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "manteiga"), quantidade: 3, uMedida: "colheres"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "creme de leite"), quantidade: 1, uMedida: "caixa"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "caldo de galinha"), quantidade: 1, uMedida: "tablete"),
      ], id: 7),
    Receita(
      nome:"Salada",
      modoDePreparo:ModoPreparoReceita(passosPreparo: [
        '1. Lave as folhas e seque',
        '2. Lave e corte o tomate em rodelas',
        '3 - Junte-os e tempere à gosto']), 
      foto:'assets/images/receitas/salada.jpg',
      ingredientes: [
        IngredienteReceita(ingrediente: Ingrediente(nome: "folhas"), quantidade: 100, uMedida: "gramas"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "tomate"), quantidade: 1, uMedida: "unidade"),
        IngredienteReceita(ingrediente: Ingrediente(nome: "tempero"), quantidade: 20, uMedida: "gramas"),
      ], id: 8),
  ];
}
