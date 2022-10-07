import 'package:app_receitas/pages/my_fridge.dart';
import 'package:flutter/material.dart';

class CenterBottomBar extends StatelessWidget {
  final VoidCallback press;
  const CenterBottomBar({
    Key? key,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
            MaterialPageRoute(
              builder: ((context) => const MyFridgePage()),
            ),
          );
      },
      backgroundColor: const Color(0xFFE58F65),
      child: IconButton(
        onPressed: () {},
        icon: Image.asset('assets/images/icons/fridgey.png'),
        iconSize: 100,
      ),
    );
  }
}


