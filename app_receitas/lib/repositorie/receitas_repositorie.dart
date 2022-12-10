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
  List<Receita> _listaReceitas = [];
  List<Receita> get listaReceitas => _listaReceitas;

  ReceitaRepositorie(){
    //_setupRecipesTable();
  }

  _readRecipesTable() async {
    Database db = await DB.instance.database;
    List resultados = await db.query('receitas');

    _listaReceitas = resultados.map((linha) {
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

  getRecipeByIngredients(List<String> ingredients) async {
    var data = [];
    List<Recipe> results = [];
    var mappedIngredients = ingredients.join(',+');
    var url = Uri.parse('${ApiConstants.SPOON_BASE_URL}/recipes/findByIngredients?$mappedIngredients');
    final response = await http.get(url);

    Future<List<Recipe>> getRecipes({String? query}) async {
      try {
        var response = await http.get(url);
        if (response.statusCode == 200) {
        
          data = json.decode(response.body);
          results = data.map((e) => Recipe.fromJson(e)).toList();
          if (query!= null){
            results = results.where((element) => element.title!.toLowerCase().contains((query.toLowerCase()))).toList();
          }
        } else {
          print("fetch error");
        }
      } on Exception catch (e) {
        print('error: $e');
      }
      return results;
    }
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
}
