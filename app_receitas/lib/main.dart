import 'package:app_receitas/constants.dart';
import 'package:app_receitas/pages/add_new_recipe_page.dart';
import 'package:app_receitas/pages/home_page.dart';
import 'package:app_receitas/pages/my_recipes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

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
      home: const HomePage(),
    );
  }
}


//void main() {
//  debugInvertOversizedImages = false;
//  runApp(const MeuAplicativo());

//}
