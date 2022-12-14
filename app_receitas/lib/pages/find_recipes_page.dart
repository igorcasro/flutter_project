// ignore_for_file: dead_code

import 'package:app_receitas/components/find_recipes_page/possible_recipes_listview.dart';
import 'package:app_receitas/components/find_recipes_page/search_input.dart';
import 'package:app_receitas/constants.dart';
import 'package:app_receitas/repositorie/receitas_repositorie.dart';
import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';

import '../models/receitas.dart';


class FindRecipesPage extends StatefulWidget {
  const FindRecipesPage({super.key});

  @override
  _FindRecipesPage createState() => _FindRecipesPage();
}

  
class _FindRecipesPage extends State<FindRecipesPage> {
  Widget build(BuildContext context) {
    bool x = true;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 260, top: 0),
            child: Blob.fromID(
              id: const ['6-4-46477'],
              size: 200,
              styles: BlobStyles(
                color: const Color.fromARGB(255, 255, 247, 209),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 0, top: 500),
            child: Blob.fromID(
              id: const ['6-4-46477'],
              size: 400,
              styles: BlobStyles(
                color: const Color.fromARGB(255, 255, 247, 209),
              ),
            ),
          ),
          SingleChildScrollView(
              child: x
                  ? Column(
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
                          child: text('Receitas poss??veis', 25),
                        ),
                        PossibleRecipeListView(),
                      ],
                    )
                  : Column(children: [
                      const SizedBox(height: 45),
                      Align(
                        alignment: const FractionalOffset(0, 0),
                        child: text('Achar receitas', 40),
                      ),
                      const SearchInput(),
                      const SizedBox(height: 10),
                      Align(
                        alignment: const FractionalOffset(0, 0),
                        child: text('Receitas poss??veis', 25),
                      ),
                      const SizedBox(height: 110),
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
                                    'N??o h?? receitas dispon??veis com o que voc?? possui na geladeira',
                                    20),
                              ),
                            ],
                          ))
                    ])),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
