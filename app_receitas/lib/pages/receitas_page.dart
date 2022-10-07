import 'package:app_receitas/models/receitas.dart';
import 'package:flutter/material.dart';

import '../components/public/bottom_bar.dart';

// ignore: must_be_immutable
class ReceitasPage extends StatefulWidget {
  Receita receita;
  ReceitasPage({Key? key, required this.receita}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ReceitasPageState createState() => _ReceitasPageState();
}

class _ReceitasPageState extends State<ReceitasPage> {
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

  Widget _backButton() {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_new_rounded,
          color: Color(0xffE58F65), size: 30),
      onPressed: () => Navigator.of(context).pop(),
    );
  }

  Widget _cardImage() {
    return Card(
        margin: const EdgeInsets.only(top: 10.0, left: 15.0, right: 25),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: SizedBox(
            height: 245,
            child: Column(children: [
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                child: Image.asset(
                  widget.receita.foto,
                  cacheWidth: 280,
                  cacheHeight: 160,
                ),
              ),
              ListTile(
                horizontalTitleGap: 0,
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                leading: const Icon(
                  Icons.timer_outlined,
                  color: Color(0xffE58F65),
                  size: 30,
                ),
                title: const Text(
                  "PREPARO",
                  style: TextStyle(
                    color: Color(0xffE58F65),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(widget.receita.tempoDePreparo),
              )
            ])));
  }

  Widget _ingredientes() {
    return Container(
        margin: const EdgeInsets.only(top: 10.0, left: 15.0, right: 25),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Ingredientes",
                  style: TextStyle(
                    color: Color(0xffE58F65),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            const SizedBox(
              height: 5,
            ),
            Column(children: [
              Column(
                children:
                    List.generate(widget.receita.ingredientes.length, (index) {
                  return Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "${widget.receita.ingredientes[index].quantidade.toInt()} ${widget.receita.ingredientes[index].uMedida} de ${widget.receita.ingredientes[index].ingrediente.nome}",
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ));
                }),
              )
            ]),
            const SizedBox(
              height: 15,
            ),
          ],
        ));
  }
  Widget _modoDePreparo(){
    return Container(
      margin: const EdgeInsets.only(left: 15.0, right: 25),
      child: Column(
        children: [
          const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Modo de preparo",
                  style: TextStyle(
                    color: Color(0xffE58F65),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Column(
              children: List.generate(
                  widget.receita.modoDePreparo.passosPreparo.length, (index) {
                return Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        widget.receita.modoDePreparo.passosPreparo[index],
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                );
              }),
            )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      appBar: AppBar(
        leading: _backButton(),
        backgroundColor: const Color(0xffF8F8F8),
        elevation: 0,
      ),
      body: Container(
          margin: const EdgeInsets.only(top: 10.0, left: 10.0),
          child: ListView(shrinkWrap: true, children: [
            Text(
              widget.receita.nome,
              textAlign: TextAlign.left,
              style: const TextStyle(

                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color(0xFF474747),
              ),
            ),
            _cardImage(),
            _ingredientes(),
            _modoDePreparo()
          ])),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _centerBottomBar(),
      bottomNavigationBar: BottomBar(press: () {  },),
    );
  }
}
