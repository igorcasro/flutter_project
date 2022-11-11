import 'package:app_receitas/constants.dart';
import 'package:app_receitas/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        home: LoginPage(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fridgey App',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: whiteBackgroundColor,
      ),
      home: const LoginPage(),
    );
  }
}
