import 'package:app_receitas/components/bottom_bar.dart';
import 'package:app_receitas/components/center_bottom_bar.dart';
import 'package:app_receitas/components/possible_recipes_listview.dart';
import 'package:app_receitas/components/search_input.dart';
import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';
import '../components/possible_recipe_card.dart';

class FindRecipesPage extends StatelessWidget {
  const FindRecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 45),
            Align(
              alignment: const FractionalOffset(0, 0),
              child: text('Achar receitas', 40),
            ),
            const SearchInput(),
            const SizedBox(height: 10),
            Align(
              alignment: const FractionalOffset(0, 0),
              child: text('Receitas possíveis', 25),
            ),
            const PossibleRecipeListView(),
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
