import 'package:flutter/material.dart';

import '../../constants.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const ProfilePic(),
          const SizedBox(height: 20),
          centered_text("Amanda", 30),
          const SizedBox(height: 10),
          description_text("Olá! Meu nome é Amanda e eu tenho 21 anos. Nasci e cresci em Las Vegas (apesar de alguns discordarem e dizerem que Juquiá não é Las Vegas).", 15),
          const SizedBox(height: 10),
          ProfileMenu(
            text: "Minha conta",
            icon: Icon(Icons.person, color: Color.fromARGB(255, 255, 166, 93),),
            press: () => {},
          ),
          ProfileMenu(
            text: "Configurações",
            icon: Icon(Icons.settings, color: Color.fromARGB(255, 255, 166, 93),),
            press: () {},
          ),
          ProfileMenu(
            text: "Ajuda",
            icon: Icon(Icons.help, color: Color.fromARGB(255, 255, 166, 93),),
            press: () {},
          ),
          ProfileMenu(
            text: "Sair da conta",
            icon: Icon(Icons.logout, color: Color.fromARGB(255, 255, 166, 93),),
            press: () {},
          ),
        ],
      ),
    );
  }
}