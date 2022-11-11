import 'package:app_receitas/components/my_account_page/text_widget.dart';
import 'package:app_receitas/models/receitas.dart';
import 'package:app_receitas/pages/recipes_page.dart';
import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';

import '../components/profile_page/profile_pic.dart';
import '../components/public/back_to_start_button.dart';
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

  Widget _profilePic () {
    return SizedBox(
      height: 150,
      width: 150,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 125.0),
            child: SizedBox(
              height: 150,
              width: 150,
              child: 
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/people/person.jpg"),
                )
            ,),
          ),
          
          Positioned(
            right: 120,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(color: Colors.white),
                  ),
                  backgroundColor: const Color(0xFFF5F6F9),
                ),
                onPressed: () {},
                child: Icon(Icons.camera_alt, color: Color.fromARGB(255, 255, 166, 93),),
              ),
            ),
          )
        ],
      ),
    );
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
                size: 300,
                styles:  BlobStyles(
                color:  const Color.fromARGB(255, 255, 187, 142),
                ),
              ),
          ),
          Container(
            child: Blob.fromID(
              id: const ['6-4-46477'],
              size: 400,
              styles: BlobStyles(
                color: const Color.fromARGB(255, 255, 247, 209),
              )
            )
          ),
          Container(
            padding: const EdgeInsets.only(left: 0, top: 500),
              child: Blob.fromID(
                id: ['6-4-46477'],
                size: 400,
                styles:  BlobStyles(
                  color:  const Color.fromARGB(255, 255, 187, 142),
                )
              ),
          ),
          Container(
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
              text("Minha conta", 40.0),
              const SizedBox(height: 10,),
              SizedBox(
                width: 50,
                child: _profilePic(),
              ),
              TextFieldWidget(maxLines: 1, label: "Nome", text: "Amanda Rodrigues", onChanged: (value) => {},),
              TextFieldWidget(maxLines: 3, label: "Descrição", text: "Oi! Eu sou Amanda e Blablabla...", onChanged: (value) => {},),
              TextFieldWidget(maxLines: 1, label: "E-mail", text: "amanda@manzoti.com", onChanged: (value) => {},),
              const SizedBox(height: 10,),
              Container(
                alignment: Alignment.center,
                  child: BackToStartButton(
                    onPressed: () {
                      Navigator.pop(context);
                    }
                  )
                )
          ])
        ])
      );
  }
}
