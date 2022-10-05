import 'package:app_receitas/repositorie/receitasRepositorie.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  Widget _receitasEmAlta() {
    final receitas = ReceitaRepositorie.listaReceitas;

    return Container(
        height: 127,
        margin: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext contexto, int receita) {
              return SizedBox(
                  width: 250,
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(11)),
                          child: Image.asset(
                            receitas[receita].foto,
                            cacheWidth: 250,
                            cacheHeight: 127,
                          ))
                    ],
                  ));
            },
            separatorBuilder: (context, _) => const SizedBox(width: 20),
            itemCount: receitas.length));
  }

  // Widget _receitasRecentes() {
  //   final receitas = ReceitaRepositorie.listaReceitas;

  //   return
  //   Expanded(
  //     flex: 10,
  //     child: Container(
  //         child: ListView.separated(
  //             shrinkWrap: true,
  //             scrollDirection: Axis.vertical,
  //             itemBuilder: (BuildContext contexto, int receita) {

  //             },
  //             separatorBuilder: (context, _) => const SizedBox(width: 20),
  //             itemCount: receitas.length))
  //     );
  // }

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
                  icon: Image.asset('assets/images/icons/home.png')),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/icons/search.png')),
              const SizedBox(
                width: 50,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/icons/list.png')),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/icons/person.png')),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _text("Início", 35.0),
          _text("Receitas em Alta", 25.0),
          _receitasEmAlta(),
          _text("Últimas receitas feitas", 25.0),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _centerBottomBar(),
      bottomNavigationBar: _bottomBar(),
    );
  }
}
