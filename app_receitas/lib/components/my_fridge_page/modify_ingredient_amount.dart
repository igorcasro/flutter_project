import 'package:flutter/material.dart';

class ModifyIngredientAmount extends StatefulWidget {
  const ModifyIngredientAmount({super.key});

  @override
  State<ModifyIngredientAmount> createState() => _ModifyIngredientAmountState();
}

class _ModifyIngredientAmountState extends State<ModifyIngredientAmount> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    setState(() {
      _count <= 0 ? _count = 0 : _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Ink(
          width: 40,
          height: 40,
          decoration: decorator(),
          child: IconButton(
            padding: const EdgeInsets.all(0.0),
            icon: const Icon(
              Icons.remove,
              size: 30,
              color: Color.fromARGB(255, 229, 144, 101),
            ),
            onPressed: _decrementCount,
            iconSize: 20,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Ink(
          width: 40,
          height: 40,
          decoration: decorator(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$_count",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 121, 121, 121),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Ink(
          width: 40,
          height: 40,
          decoration: decorator(),
          child: IconButton(
            padding: const EdgeInsets.all(0.0),
            icon: const Icon(
              Icons.add,
              size: 30,
              color: Color.fromARGB(255, 229, 144, 101),
            ),
            onPressed: _incrementCount,
            iconSize: 20,
          ),
        ),
      ],
    );
  }

  ShapeDecoration decorator() {
    return ShapeDecoration(
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
    );
  }
}
