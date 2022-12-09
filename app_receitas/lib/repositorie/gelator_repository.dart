import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import '../database/db.dart';
import '../modelsDataBase/gelator.dart';

class GelatorRepository extends ChangeNotifier {
  late Database db;

  final List<Gelator> _gelator = [];

  List<Gelator> get gelator => _gelator;

  insertGelator(Gelator gelator) async {
    db = await DB.instance.database;
    
    db.insert('gelator', {'id': null,});

    notifyListeners();
  }
}
