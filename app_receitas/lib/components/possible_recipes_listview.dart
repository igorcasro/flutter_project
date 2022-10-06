import 'package:app_receitas/components/possible_recipe_card.dart';
import 'package:flutter/material.dart';

import '../repositorie/receitasRepositorie.dart';

class PossibleRecipeListView extends StatelessWidget {
  const PossibleRecipeListView({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final receitas = ReceitaRepositorie.listaReceitas;

    return Container(
        height: 550,
        margin: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext contexto, int receita) {
              return PossibleRecipeCard(
                receita: receitas[receita],
              );
            },
            separatorBuilder: (context, _) => const SizedBox(width: 0),
            itemCount: receitas.length));
  }
}