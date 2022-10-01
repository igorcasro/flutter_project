import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/receitas.dart';
import '../repositorie/receitasRepositorie.dart';

// ignore: use_key_in_widget_constructors
class FindRecipesPage extends StatefulWidget {
  const FindRecipesPage({super.key});

  @override
  State<FindRecipesPage> createState() => _FindRecipesPageState();
}

class _FindRecipesPageState extends State<FindRecipesPage> {
  Widget _text(text, double tamanho) {
    // ignore: non_constant_identifier_names
    return Container(
      margin: const EdgeInsets.only(top: 10.0, left: 10.0),
      child:
          // ignore: prefer_const_constructors
          Text(
        text,
        textAlign: TextAlign.left,
        // ignore: prefer_const_constructors
        style: TextStyle(
          fontSize: tamanho,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF474747),
            
        ),
      ),
      // ignore: prefer_const_constructors
    );
  }

  Widget _searchBar(){
    return Container(
          margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                        ),
                        hintText: 'Pesquisar uma receita',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                        ),
                        prefixIcon: Container(
                          padding: const EdgeInsets.all(15),
                          width: 18,
                          child: Image.asset('assets/images/icons/search.png'),
                        )
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only (left: 10),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE58F65),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    width: 60,
                    child: Image.asset(
                    'assets/images/icons/search_2.png')
                  ),
                ],
              )
            ],
          ),
        );
  }

  Widget _bottomBar(){
    return  BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.white,
          child: IconTheme(
            data: const IconThemeData(color: Color(0xFFE58F65)),
            child: Padding(padding: const EdgeInsets.all(1),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: (){}, icon: Image.asset('assets/images/icons/home.png')),
                  IconButton(onPressed: (){}, icon: Image.asset('assets/images/icons/search.png')),
                  const SizedBox(width: 50,),
                  IconButton(onPressed: (){}, icon: Image.asset('assets/images/icons/list.png')),
                  IconButton(onPressed: (){}, icon: Image.asset('assets/images/icons/person.png')),
                ],
              ),),

          ),
        );
  }

  Widget _centerBottomBar(){
    return
    FloatingActionButton(onPressed: (){}, 
          backgroundColor: const Color(0xFFE58F65),
            child: IconButton(onPressed: (){}, icon: Image.asset('assets/images/icons/fridgey.png'), iconSize: 100,),
          );
  }

  Widget _possibleRecipeCard(){
    return Center(
      child: Card(
        child: Container(
            width: 350,
            height: 200,
            margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 40),
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/receitas/pure.jpg'), fit: BoxFit.fitWidth
              ),
              borderRadius: BorderRadius.circular(15)
            ),
        child: InkWell(
          splashColor: const Color.fromARGB(255, 255, 177, 113).withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: Container(
            width: 300,
            height: 100,
            margin: const EdgeInsets.only(top: 170.0, left: 10.0),
            child: const Text(
              'Purê de batatas',
              textAlign: TextAlign.left,
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF474747),
              ),
          ),
        ),
      ),
    )
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            _text("Achar receitas", 35.0),
            _searchBar(),
            _text("Receitas possíveis", 25.0),
            _possibleRecipeCard(),
            
          ],
        ),
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _centerBottomBar(),
        bottomNavigationBar: _bottomBar(),

    );


  }
}
