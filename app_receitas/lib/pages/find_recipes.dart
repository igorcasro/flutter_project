// ignore_for_file: dead_code

import 'package:app_receitas/components/find_recipes_page/possible_recipes_listview.dart';
import 'package:app_receitas/components/find_recipes_page/search_input.dart';
import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';

class FindRecipesPage extends StatelessWidget {
  const FindRecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool x = true;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      body: SingleChildScrollView(
        child: x
            ? Column(
                children: [
                  const SizedBox(
                    height: 45,
                  ),
                  Align(
                    alignment: const FractionalOffset(
                      0,
                      0,
                    ),
                    child: text(
                      'Achar receitas',
                      40,
                    ),
                  ),
                  const SearchInput(),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: const FractionalOffset(
                      0,
                      0,
                    ),
                    child: text(
                      'Receitas possíveis',
                      25,
                    ),
                  ),
                  const PossibleRecipeListView(),
                ],
              )
            : Column(
                children: [
                  const SizedBox(
                    height: 45,
                  ),
                  Align(
                    alignment: const FractionalOffset(
                      0,
                      0,
                    ),
                    child: text(
                      'Achar receitas',
                      40,
                    ),
                  ),
                  const SearchInput(),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: const FractionalOffset(
                      0,
                      0,
                    ),
                    child: text(
                      'Receitas possíveis',
                      25,
                    ),
                  ),
                  const SizedBox(
                    height: 110,
                  ),
                  SizedBox(
                    width: 250,
                    child: Column(
                      children: [
                        Image.asset(
                          './assets/images/icons/broken-heart.png',
                          width: 90,
                        ),
                        Align(
                          alignment: const FractionalOffset(0, 0),
                          child: emptyText(
                              'Não há receitas disponíveis com o que você possui na geladeira',
                              20),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
      ),
    );
  }
}
