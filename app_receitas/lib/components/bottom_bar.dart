import 'package:app_receitas/pages/find_recipes.dart';
import 'package:app_receitas/pages/home_page.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final VoidCallback press;
  const BottomBar({
    Key? key,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.white,
      child: IconTheme(
        data: const IconThemeData(color: Color(0xFFE58F65)),
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const HomePage()),
                  ),
                );},
                  icon: Image.asset('assets/images/icons/home.png')),
              IconButton(
                  onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const FindRecipesPage()),
                  ),
                );},
                  icon: Image.asset('assets/images/icons/search.png')),
              const SizedBox(
                width: 50,
              ),
              IconButton(
                  onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const HomePage()),
                  ),
                );},
                  icon: Image.asset('assets/images/icons/list.png')),
              IconButton(
                  onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const HomePage()),
                  ),
                );},
                  icon: Image.asset('assets/images/icons/person.png')),
            ],
          ),
        ),
      ),
    );
  }
}