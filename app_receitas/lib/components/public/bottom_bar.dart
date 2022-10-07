import 'package:app_receitas/pages/find_recipes.dart';
import 'package:app_receitas/pages/home_page.dart';
import 'package:app_receitas/pages/my_recipes.dart';
import 'package:app_receitas/pages/profile_page.dart';
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const HomePage()),
                      ),
                    );
                  },
                  icon: const Icon(Icons.home_sharp, color: Color(0xffE58F65))),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const FindRecipesPage()),
                      ),
                    );
                  },
                  icon:
                      const Icon(Icons.search_sharp, color: Color(0xFF474747))),
              const SizedBox(
                width: 50,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const MyRecipes()),
                      ),
                    );
                  },
                  icon: const Icon(Icons.view_timeline_rounded,
                      color: Color(0xFF474747))),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const ProfilePage()),
                      ),
                    );
                  },
                  icon: const Icon(Icons.person, color: Color(0xFF474747))),
            ],
          ),
        ),
      ),
    );
  }
}