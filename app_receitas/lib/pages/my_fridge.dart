import 'package:app_receitas/components/my_fridge_page/add_ingredient_listview.dart';
import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';
import '../components/my_fridge_page/add_ingredient_input.dart';

class MyFridgePage extends StatelessWidget {
  const MyFridgePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool x = true;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      body: SingleChildScrollView(
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
    );
  }
}
