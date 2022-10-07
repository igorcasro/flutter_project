import 'package:flutter/material.dart';
import '../../repositorie/ingredientsPhotosRepository.dart';
import 'add_ingredient_card.dart';

class AddIngredientListview extends StatelessWidget {
  const AddIngredientListview({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ingredients = IngredientRepository.ingredientsPhotosList;

    return Container(
        height: MediaQuery.of(context).size.height * 0.65,
        margin: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: ListView.separated(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext contexto, int ingredient) {
              return AddIngredientCard(
                ingredient: ingredients[ingredient],
              );
            },
            separatorBuilder: (context, _) => const SizedBox(width: 0),
            itemCount: ingredients.length));
  }
}