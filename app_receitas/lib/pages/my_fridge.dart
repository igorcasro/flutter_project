import 'package:app_receitas/components/my_fridge_page/add_ingredient_listview.dart';
import 'package:app_receitas/components/public/bottom_bar.dart';
import 'package:app_receitas/components/public/center_bottom_bar.dart';
import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';
import '../components/my_fridge_page/add_ingredient_input.dart';

class MyFridgePage extends StatelessWidget {
  const MyFridgePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
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
      floatingActionButton: CenterBottomBar(
        press: () {},
      ),
      bottomNavigationBar: BottomBar(
        press: () {},
      ),
    );
  }
}
