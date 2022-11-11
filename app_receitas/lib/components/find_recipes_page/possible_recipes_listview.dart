import 'package:app_receitas/components/find_recipes_page/possible_recipe_card.dart';
import 'package:flutter/material.dart';

import '../../repositorie/receitas_repositorie.dart';

class PossibleRecipeListView extends StatelessWidget {
  const PossibleRecipeListView({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final receitas = ReceitaRepositorie.listaReceitas;

    return Container(
        height: MediaQuery.of(context).size.height * 0.65,
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: ListView.separated(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
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