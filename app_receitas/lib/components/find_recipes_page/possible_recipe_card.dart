import 'package:app_receitas/models/api_recipe.dart';
import 'package:app_receitas/pages/receitas_page.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../models/receitas.dart';

class PossibleRecipeCard extends StatelessWidget {
    final Recipe receita;
    const PossibleRecipeCard({
      Key? key,
      required this.receita,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(children: [
          Container(
            width: 350,
            height: 160,
            margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 3),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(receita.image), fit: BoxFit.fitWidth
              ),
              borderRadius: BorderRadius.circular(15)
            ), 
            child: InkWell(
            splashColor: const Color.fromARGB(255, 255, 177, 113).withAlpha(30),
            onTap: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => ReceitasPage(receita: receita,)),
                      ),
                    );
            },
        )
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
           text(receita.title, 20)
          ],),
          const SizedBox(height: 8),
          ]
      )
    )
    );
  }
}