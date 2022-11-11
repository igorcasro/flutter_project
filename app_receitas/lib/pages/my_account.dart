import 'package:app_receitas/components/my_account_page/TextWidget.dart';
import 'package:app_receitas/models/receitas.dart';
import 'package:app_receitas/pages/recipes_page.dart';
import 'package:app_receitas/repositorie/receitasRepositorie.dart';
import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';

import '../components/find_recipes_page/search_input.dart';
import '../components/profile_page/profile_pic.dart';
import '../constants.dart';


// ignore: use_key_in_widget_constructors
class MyAccountPage extends StatefulWidget {
  const MyAccountPage({super.key});

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  mostrarDetalhes(Receita receita) {
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => ReceitasPage(receita: receita)));
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
                id: ['6-4-46477'],
                size: 400,
                styles:  BlobStyles(
                color:  const Color.fromARGB(255, 255, 247, 209),
                ),
              ),
            ),
          Container(
            padding: const EdgeInsets.only(left: 0, top: 500),
              child: Blob.fromID(
                id: ['6-4-46477'],
                  size: 400,
                  styles:  BlobStyles(
                  color:  const Color.fromARGB(255, 255, 247, 209),
                ),
              ),
            ),
          ListView(
            children: <Widget>[
              const SizedBox(height: 10,),
              text("Minha conta", 40.0),
              const SizedBox(height: 10,),
              const ProfilePic(),
              TextFieldWidget(label: "Descrição", text: "aaaaaaa", onChanged: (value) => {},),
              text("Últimas receitas feitas", 25.0),
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}