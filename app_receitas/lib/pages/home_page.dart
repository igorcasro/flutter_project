import 'package:app_receitas/components/public/bottom_bar.dart';
import 'package:app_receitas/models/receitas.dart';
import 'package:app_receitas/pages/receitas_page.dart';
import 'package:app_receitas/repositorie/receitasRepositorie.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  mostrarDetalhes(Receita receita){
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (_) => ReceitasPage(receita: receita)
      )
    );
  }

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
        margin: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext contexto, int receita) {
                return GestureDetector(
                    onTap: () => mostrarDetalhes(receitas[receita]),
                    child:Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    child: ClipRRect(
                      // ignore: sort_child_properties_last
                      child: Image.asset(
                        receitas[receita].foto,
                        cacheWidth: 250,
                        cacheHeight: 127,),
                      borderRadius: BorderRadius.circular(15),),
                ));
            },
            separatorBuilder: (context, _) => const SizedBox(width: 5),
            itemCount: receitas.length,
            ));
  }

  Widget _receitasRecentes() {
    final receitas = ReceitaRepositorie.listaReceitas;
    return
      Container(
          margin: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext contexto, int receita) {
                  return Card(
                     shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                    child: ListTile(
                    leading: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(15)) ,
                      child: Image.asset(receitas[receita].foto,cacheHeight: 100, cacheWidth: 100,),
                    ),
                    title: Text(receitas[receita].nome),
                    subtitle: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(Icons.access_time_sharp),
                        const Text("Há 2 dias"),
                      ],
                    ),
                    trailing: const Icon(Icons.outbond_outlined,color: Color(0xffE58F65)),
                    onTap: () => mostrarDetalhes(receitas[receita])
                    ,
                  ),
                );
              },
              separatorBuilder: (context, _) => const SizedBox(width: 20),
              itemCount: 3,
            )
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
        body:  ListView(
          children: <Widget>[
            _text("Início", 35.0),
            _text("Receitas em Alta", 25.0),
            _receitasEmAlta(),
            _text("Últimas receitas feitas", 25.0),
            _receitasRecentes(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _centerBottomBar(),
        bottomNavigationBar: BottomBar(press: () {  },),
    );
  }
}
