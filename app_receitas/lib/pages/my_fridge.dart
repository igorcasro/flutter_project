import 'package:app_receitas/components/my_fridge_page/add_ingredient_listview.dart';
import 'package:app_receitas/components/public/bottom_bar.dart';
import 'package:app_receitas/components/public/center_bottom_bar.dart';
import 'package:app_receitas/constants.dart';
import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import '../components/my_fridge_page/add_ingredient_input.dart';

class MyFridgePage extends StatelessWidget {
  const MyFridgePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool x = true;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      body: Stack(
        children: [
          Container(
                padding: EdgeInsets.only(left: 300, top: 0),
                  child: Blob.fromID(
                    id: ['6-4-46477'],
                    size: 200,
                    styles:  BlobStyles(
                      color:  Color.fromARGB(255, 255, 247, 209),
                    ),
                  ),
                ),
                Container(
                padding: EdgeInsets.only(left: 0, top: 400),
                  child: Blob.fromID(
                    id: ['6-4-46477'],
                    size: 300,
                    styles:  BlobStyles(
                      color:  Color.fromARGB(255, 255, 247, 209),
                    ),
                  ),
                ),
          SingleChildScrollView(
            child: x
                ? Column(
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
                  )
                : Column(children: [
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
                    const SizedBox(height: 110),
                    SizedBox(
                        width: 250,
                        child: Column(
                          children: [
                            Image.asset(
                              './assets/images/icons/oh-no.png',
                              width: 90,
                            ),
                            Align(
                              alignment: const FractionalOffset(0, 0),
                              child: emptyText(
                                  'Sua geladeira está vazia! Adicione itens ou vá fazer compras :P',
                                  20),
                            ),
                          ],
                        ))
                  ]),
          ),
        ],
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
