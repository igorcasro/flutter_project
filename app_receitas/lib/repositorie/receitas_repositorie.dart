// ignore_for_file: file_names

import 'dart:convert';
import 'dart:io';

import 'package:app_receitas/models/ingrediente_receita.dart';
import 'package:app_receitas/models/ingredientes.dart';
import 'package:app_receitas/models/modo_preparo_receita.dart';
import 'package:app_receitas/models/receitas.dart';
import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';

import '../database/db.dart';

class ReceitaRepositorie extends ChangeNotifier {
  List<Receita> _listaReceitas = [];
  List<Receita> get listaReceitas => _listaReceitas;

  ReceitaRepositorie(){
    _setupRecipesTable();
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

  _setupDadosTableRecipes() async {
    if (await _recipesTableIsEmpty()) {
      String uri = 'https://api.coinbase.com/v2/assets/search?base=BRL';

      final response = await http.get(Uri.parse(uri));

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        final List<dynamic> receitas = json['data'];
        Database db = await DB.instance.database;
        Batch batch = db.batch();

        receitas.forEach((receita) {
          final preco = receita['latest_price'];
          final timestamp = DateTime.parse(preco['timestamp']);

          batch.insert('receitas', {
            'id': receita['id'],
            'nome': receita['title'],
            'foto': receita['image'],
            'modoDePreparo': receita['instructions'],
            'ingredientes': receita['extendedIngredients'],
          });
        });
        await batch.commit(noResult: true);
      }
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