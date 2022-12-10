import 'package:app_receitas/components/find_recipes_page/possible_recipe_card.dart';
import 'package:app_receitas/models/api_recipe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/receitas.dart';
import '../../repositorie/receitas_repositorie.dart';

class PossibleRecipeListView extends StatefulWidget {
  const PossibleRecipeListView({super.key});

  @override
  _PossibleRecipeListView createState() => _PossibleRecipeListView();
}
class _PossibleRecipeListView extends State<PossibleRecipeListView> {
  List<String> ingredientes = ['Apples', 'Flour'];
  ReceitaRepositorie recipes = ReceitaRepositorie();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Recipe>>(
      future: recipes.getRecipeByIngredients(ingredientes),
      builder: (context, snapshot) {
        var data = snapshot.data;
        return Container(
          height: MediaQuery.of(context).size.height * 0.65,
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext contexto, int receita) {
                return PossibleRecipeCard(
                  receita: data![receita],
                );
              },
              separatorBuilder: (context, _) => const SizedBox(width: 0),
              itemCount: data!.length
          )
        );
      }
    );
  }
}
      
        
