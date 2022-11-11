import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';
import '../components/profile_page/options_list.dart';
import '../components/profile_page/profile_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      body: Column(children: [
        const SizedBox(height: 45),
        Align(
          alignment: const FractionalOffset(0, 0),
          child: text('Meu perfil', 40),
        ),
        const SizedBox(height: 10),
        const ProfileCard(),
        const OptionsList(),
      ]),
    );
  }
}
