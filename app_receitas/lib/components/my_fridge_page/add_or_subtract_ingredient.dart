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
                padding: const EdgeInsets.all(0.0),
                onPressed: () {
                  counter--;
                },
                icon: const Icon(
                  Icons.add,
                  size: 30,
                  color: Color.fromARGB(255, 229, 144, 101),
                ),
                iconSize: 20.0,
              ),
            ),
          ],
        ),
      ),
      const SizedBox(width: 10),
      Ink(
          width: 40,
          height: 40,
          decoration: ShapeDecoration(
            color: const Color.fromARGB(255, 248, 248, 248),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counterText,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 121, 121, 121),
                ),
              ),
            ],
          )),
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
                padding: const EdgeInsets.all(0.0),
                onPressed: () {
                  counter--;
                },
                icon: const Icon(
                  size: 30,
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
