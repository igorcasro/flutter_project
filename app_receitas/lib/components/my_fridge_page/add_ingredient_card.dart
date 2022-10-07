import 'package:app_receitas/models/ingredientsPhotos.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'add_or_subtract_ingredient.dart';

class AddIngredientCard extends StatelessWidget {
    final IngredientePhotos? ingredient;
    const AddIngredientCard({
      Key? key,
      required this.ingredient,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          width: 80,
          height: 80,
          margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ingredient!.foto), fit: BoxFit.fill
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
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Text(
            ingredient!.ingrediente.nome,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: blackTextColor,
            ),
          ),
         const SizedBox(height: 10),
         AddOrSubtractIngredient(),
        ],),
        ]
    )
    );
  }
}