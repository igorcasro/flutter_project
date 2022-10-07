import 'package:app_receitas/components/find_recipes_page/possible_recipe_card.dart';
import 'package:flutter/material.dart';

import '../../repositorie/receitasRepositorie.dart';

class PossibleRecipeListView extends StatelessWidget {
  const PossibleRecipeListView({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final receitas = ReceitaRepositorie.listaReceitas;

    return Container(
        height: 580,
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: ListView.separated(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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