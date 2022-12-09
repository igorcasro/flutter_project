import 'package:app_receitas/models/receitas.dart';
import 'package:app_receitas/pages/recipes_page.dart';
import 'package:app_receitas/repositorie/receitas_repositorie.dart';
import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';

import '../components/find_recipes_page/search_input.dart';

// ignore: use_key_in_widget_constructors
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  late List<Receita> receitas;
  late ReceitaRepositorie receitasRepository;

  mostrarDetalhes(Receita receita) {
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => ReceitasPage(receita: receita)));
  }

  Widget _text(text, double tamanho) {
    // ignore: non_constant_identifier_names
    return Container(
      margin: const EdgeInsets.only(top: 10.0, left: 20.0),
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
    return Container(
        height: 200,
        width: 250,
        margin: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext contexto, int receita) {
            return GestureDetector(
                onTap: () => mostrarDetalhes(receitas[receita]),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: ClipRRect(
                    // ignore: sort_child_properties_last
                    child: Image.asset(
                      fit: BoxFit.cover,
                      receitas[receita].foto,
                      // cacheWidth: 250,
                      // cacheHeight: 127,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ));
          },
          separatorBuilder: (context, _) => const SizedBox(width: 5),
          itemCount: receitas.length,
        ));
  }

  Widget _receitasRecentes() {
    return Container(
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
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Image.asset(
                    receitas[receita].foto,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(receitas[receita].nome),
                subtitle: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(Icons.access_time_sharp),
                    const Text("Há 2 dias"),
                  ],
                ),
                trailing: const Icon(Icons.outbond_outlined,
                    color: Color(0xffE58F65)),
                onTap: () => mostrarDetalhes(receitas[receita]),
              ),
            );
          },
          separatorBuilder: (context, _) => const SizedBox(width: 20),
          itemCount: 3,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 250, top: 10),
            child: Blob.fromID(
              id: const ['6-4-46477'],
              size: 400,
              styles: BlobStyles(
                color: const Color.fromARGB(255, 255, 247, 209),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 0, top: 500),
            child: Blob.fromID(
              id: const ['6-4-46477'],
              size: 400,
              styles: BlobStyles(
                color: const Color.fromARGB(255, 255, 247, 209),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 250, top: 10),
            child: Blob.fromID(
              id: const ['6-4-46477'],
              size: 400,
              styles: BlobStyles(
                color: const Color.fromARGB(255, 255, 247, 209),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 0, top: 600),
            child: Blob.fromID(
              id: const ['6-4-46477'],
              size: 400,
              styles: BlobStyles(
                color: const Color.fromARGB(255, 255, 247, 209),
              ),
            ),
          ),
          ListView(
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              _text("Bem-vindo de volta!", 40.0),
              const SearchInput(),
              _text("Receitas em Alta", 30.0),
              _receitasEmAlta(),
              _text("Últimas receitas feitas", 25.0),
              _receitasRecentes(),
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
