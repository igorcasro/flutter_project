// ignore_for_file: library_private_types_in_public_api

import 'package:app_receitas/models/receitas.dart';
import 'package:app_receitas/pages/add_new_recipe_page.dart';
import 'package:app_receitas/pages/recipes_page.dart';
import 'package:app_receitas/repositorie/receitas_repositorie.dart';
import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import 'package:app_receitas/constants.dart';
import 'package:provider/provider.dart';
import '../components/public/add_recipe_button.dart';

class MyRecipes extends StatefulWidget {
  const MyRecipes({super.key});

  @override
  _MyRecipesState createState() => _MyRecipesState();
}

class _MyRecipesState extends State<MyRecipes> {
  late List<Receita> receitas;
  late ReceitaRepositorie receitasRepository;

  mostrarDetalhes(Receita receita) {
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => ReceitasPage(receita: receita)));
  }

  addNewRecipes() {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const AddNewRecipePage()));
  }

  Widget _listCardRecipes() {
    return Expanded(
      flex: 10,
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(7, 0, 7, 0),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (BuildContext contexto, int receita) {
          return GestureDetector(
            onTap: () => mostrarDetalhes(receitas[receita]),
            child: SizedBox(
              width: 300,
              height: 305,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                        child: Image.asset(
                          receitas[receita].foto,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          receitas[receita].nome,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: blackTextColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        // Text(
                        //   receitas[receita].,
                        //   textAlign: TextAlign.right,
                        //   style: const TextStyle(
                        //     fontSize: 16,
                        //   ),
                        // )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, __) => const SizedBox(height: 5),
        itemCount: receitas.length,
      ),
    );
  }

  Widget _addRecipesButtom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AddRecipeButton(
            text: "Adicionar nova receita",
            onPressed: () {
              addNewRecipes();
            }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    receitasRepository = context.watch<ReceitaRepositorie>();

    return Scaffold(
      backgroundColor: whiteBackgroundColor,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 50, top: 00),
            child: Blob.fromID(
              id: const ['6-4-46477'],
              size: 300,
              styles: BlobStyles(
                color: const Color.fromARGB(255, 255, 247, 209),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 0, top: 400),
            child: Blob.fromID(
              id: const ['6-4-46477'],
              size: 300,
              styles: BlobStyles(
                color: const Color.fromARGB(255, 255, 247, 209),
              ),
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 40,
            ),
            text("Minhas receitas", 40),
            const SizedBox(
              height: 10,
            ),
            _addRecipesButtom(),
            const SizedBox(
              height: 15,
            ),
            _listCardRecipes()
          ]),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
