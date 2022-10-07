import 'package:app_receitas/components/public/send_button.dart';
import 'package:app_receitas/models/receitas.dart';
import 'package:app_receitas/pages/add_new_recipe_page.dart';
import 'package:app_receitas/pages/recipes_page.dart';
import 'package:app_receitas/repositorie/receitasRepositorie.dart';
import 'package:flutter/material.dart';
import 'package:app_receitas/constants.dart';

import '../components/public/bottom_bar.dart';
import '../components/public/center_bottom_bar.dart';

class MyRecipes extends StatefulWidget {
  const MyRecipes({super.key});

  @override
  _MyRecipesState createState() => _MyRecipesState();
}

class _MyRecipesState extends State<MyRecipes> {

  mostrarDetalhes(Receita receita) {
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => ReceitasPage(receita: receita)));
  }

  addNewRecipes() {
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => AddNewRecipePage()));
  }

  Widget _bottomBar() {
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
                  onPressed: () {},
                  icon: const Icon(Icons.home_sharp, color: Color(0xFF474747))),
              IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.search_sharp, color: Color(0xFF474747))),
              const SizedBox(
                width: 50,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.view_timeline_rounded,
                      color: Color(0xffE58F65))),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person, color: Color(0xFF474747))),
            ],
          ),
        ),
      ),
    );
  }

  Widget _centerBottomBar() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: const Color(0xFFE58F65),
      child: IconButton(
        onPressed: () {},
        icon: Image.asset('assets/images/icons/fridgey.png'),
        iconSize: 100,
      ),
    );
  }

  Widget _headerMyRecipes() {
    return Expanded(
      flex: 2,
      child: Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Minhas receitas",
              style: TextStyle(
                color: blackTextColor,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            )),
      ),
    );
  }

  Widget _listCardRecipes() {
    final receitas = ReceitaRepositorie.listaReceitas;

    return Expanded(
      flex: 10,
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (BuildContext contexto, int receita) {
          return GestureDetector(
            onTap: () => mostrarDetalhes(receitas[receita]),
            child: SizedBox(
              width: 300,
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      child: Image.asset(
                        receitas[receita].foto,
                        cacheWidth: 289,
                        cacheHeight: 110,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          receitas[receita].nome,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: blackTextColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          receitas[receita].data,
                          textAlign: TextAlign.right,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, __) => const SizedBox(height: 5),
        itemCount: receitas.length,
      ),
    );
  }

  Widget _addRecipesButtom(){
    Size size = MediaQuery.of(context).size;
    return Expanded(
      flex: 2,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: size.height * 0.07,
        width: size.width * 0.85,
        child: ElevatedButton.icon(
          icon: const Icon(Icons.add_circle_outline_sharp, color: Colors.white,),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(29),
            ),
            backgroundColor: primaryColor,
            textStyle: const TextStyle(
              fontSize: 20,
              color: loginAndRegisterColor,
            ),
          ),
          onPressed: () => addNewRecipes(),
          label: Text(
            "Adicionar nova receita",
            style: const TextStyle(color: loginAndRegisterColor),
          ),
          
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          _headerMyRecipes(),
          _addRecipesButtom(),
          _listCardRecipes()
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CenterBottomBar(
        press: () {},
      ),
      bottomNavigationBar: BottomBar(
        press: () {},
      ),
    );
  }
}
