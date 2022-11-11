import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import '../database/db.dart';
import '../modelsDataBase/person.dart';

class PersonRepository extends ChangeNotifier {
  late Database db;
  final List<Person> _persons = [];

  List<Person> get person => _persons;

  insertPerson(Person person) async {
    db = await DB.instance.database;
    db.insert('person', {
      'id': person.id,
      'username': person.username,
      'email': person.email,
      'password': person.password,
      'telephone': person.telephone
    });
    notifyListeners();
  }
}
