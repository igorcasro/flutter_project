import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/receitas.dart';

class PossibleRecipeCard extends StatelessWidget {
    final Receita? receita;
    const PossibleRecipeCard({
      Key? key,
      required this.receita,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(children: [
          Container(
            width: 350,
            height: 160,
            margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 3),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(receita!.foto), fit: BoxFit.fitWidth
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
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
           text(receita!.nome, 20)
          ],),
          SizedBox(height: 8),
          ]
      )
    )
    );
  }
}