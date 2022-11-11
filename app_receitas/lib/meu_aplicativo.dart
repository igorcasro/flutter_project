import 'package:app_receitas/pages/login_page.dart';
import 'package:flutter/material.dart';

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Fridgey App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home: const LoginPage(),
  );
}
