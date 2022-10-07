import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddOrSubtractIngredient extends StatelessWidget {
    late int counter;
    late String counterText;
    AddOrSubtractIngredient({
      Key? key,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    counter = 0;
    counterText = "0";
    
    return Row(children: [
      SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Ink(
              width: 40,
              height: 40,
              decoration: ShapeDecoration(
                color: const Color.fromARGB(255, 248, 248, 248),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                 shadows: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 0.1,
                    blurRadius: 1,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {
                  counter--;
                },
                icon: const Icon(
                  Icons.add,
                  color: Color.fromARGB(255, 229, 144, 101),
                ),
                iconSize: 20.0,
              ),
            ),
          ],
        ),
      ),
      
      const SizedBox(width: 10),

      SizedBox(
        width: 40,
        height: 40,
          child: TextField(
            decoration: InputDecoration(
              labelText: counterText,
              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
      ),
      
      const SizedBox(width: 10),

      SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Ink(
              width: 40,
              height: 40,
              decoration: ShapeDecoration(
                color: const Color.fromARGB(255, 248, 248, 248),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                 shadows: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 0.1,
                    blurRadius: 1,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {
                  counter--;
                },
                icon: const Icon(
                  Icons.remove,
                  color: Color.fromARGB(255, 229, 144, 101),
                ),
                iconSize: 20.0,
              ),
            ),
          ],
        ),
      )
    ]);
  }
}