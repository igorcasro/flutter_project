import 'package:app_receitas/constants.dart';
import 'package:app_receitas/pages/find_recipes.dart';
import 'package:app_receitas/pages/first_page.dart';
import 'package:app_receitas/pages/my_fridge.dart';
import 'package:app_receitas/pages/my_recipes.dart';
import 'package:app_receitas/pages/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int paginaAtual = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: setPaginaAtual,
        children: const [
          FirstPage(),
          FindRecipesPage(),
          MyFridgePage(),
          MyRecipes(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        selectedItemColor: primaryColor,
        unselectedItemColor: bottomBarItensColor,
        currentIndex: paginaAtual,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home_sharp,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.search_sharp,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: primaryColor,
              maxRadius: 28,
              minRadius: 18,
              child: Image.asset(
                'assets/images/icons/fridgey.png',
                height: 35,
              ),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.view_timeline_rounded,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: '',
          ),
        ],
        onTap: (pagina) {
          pageController.animateToPage(
            pagina,
            duration: const Duration(milliseconds: 400),
            curve: Curves.ease,
          );
        },
        iconSize: 30,
      ),
    );
  }
}
