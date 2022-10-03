import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/receitas.dart';
import '../repositorie/receitasRepositorie.dart';

// ignore: use_key_in_widget_constructors
class MyFridgePage extends StatefulWidget {
  const MyFridgePage({super.key});

  @override
  State<MyFridgePage> createState() => _MyFridgePageState();
}

class _MyFridgePageState extends State<MyFridgePage> {
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

  Widget _addBar(){
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
                        hintText: 'Pesquisar um alimento',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                        ),
                        prefixIcon: Container(
                          padding: const EdgeInsets.all(15),
                          width: 18,
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.add)),
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

    bool isPressed = false;
  _pressed() {
    var newVal = true;
    if(isPressed) {
      newVal = false;
    } else {
      newVal = true;
    }

    // This function is required for changing the state.
    // Whenever this function is called it refresh the page with new value
    setState((){
      isPressed = newVal;
    });
  }

  Widget _bottomBar(){
    
    return  BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.white,
          child: IconTheme(
            data: const IconThemeData(color: Color.fromARGB(255, 209, 209, 209)),
            child: Padding(padding: const EdgeInsets.all(1),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: () => _pressed(), icon: Icon(Icons.home), color: isPressed ? Color(0xFFE58F65) : Color.fromARGB(255, 209, 209, 209)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                  const SizedBox(width: 50,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.list)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.person)),
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

  Widget _counter(){
    return Container(

    );
  }

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
        body: ListView(
          children: <Widget>[
            _text("Minha Geladeira", 35.0),
            _text("Adicionar à geladeira", 25.0),
            _addBar(),
            _foodCard(),
            
          ],
        ),
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Visibility(child:_centerBottomBar(), visible: !keyboardIsOpen),
        bottomNavigationBar: _bottomBar(),

    );


  }
}
