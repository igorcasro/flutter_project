import 'package:app_receitas/components/find_recipes_page/possible_recipe_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/receitas.dart';
import '../../repositorie/receitas_repositorie.dart';

class PossibleRecipeListView extends StatelessWidget {
  late List<Receita> receitasTabela;
  late ReceitaRepositorie receitas;

  PossibleRecipeListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    receitas = context.watch<ReceitaRepositorie>();
    receitasTabela = receitas.listaReceitas;

    return Container(
        height: MediaQuery.of(context).size.height * 0.65,
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: ListView.separated(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext contexto, int receita) {
              return PossibleRecipeCard(
                receita: receitasTabela[receita],
              );
            },
            separatorBuilder: (context, _) => const SizedBox(width: 0),
            itemCount: receitasTabela.length));
  }
}