import 'package:app_receitas/components/add_ingredient_listview.dart';
import 'package:app_receitas/components/bottom_bar.dart';
import 'package:app_receitas/components/center_bottom_bar.dart';
import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';
import '../components/add_ingredient_input.dart';

class MyFridgePage extends StatelessWidget {
  const MyFridgePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Align(
              alignment: const FractionalOffset(0, 0),
              child: text('Minha geladeira', 40),
            ),
            const SizedBox(height: 5),
            Align(
              alignment: const FractionalOffset(0, 0),
              child: text('Adicionar à geladeira', 25),
            ),
            const AddIngredientInput(),
            const AddIngredientListview(),
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CenterBottomBar(press: () {  },),
      bottomNavigationBar: BottomBar(press: () {  },),
    );
  }
}
