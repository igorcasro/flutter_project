import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/receitas.dart';
import 'add_or_subtract_ingredient.dart';

class AddIngredientCard extends StatelessWidget {
    final Receita? receita;
    const AddIngredientCard({
      Key? key,
      required this.receita,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          width: 80,
          height: 80,
          margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(receita!.foto), fit: BoxFit.fill
            ),
            borderRadius: BorderRadius.circular(15)
          ), 
          child: InkWell(
          splashColor: const Color.fromARGB(255, 255, 177, 113).withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },
      )
        ),
        Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
         text(receita!.nome, 20),
         const SizedBox(height: 10),
         AddOrSubtractIngredient(),
        ],),
        ]
    )
    );
  }
}