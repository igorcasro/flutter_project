import 'package:app_receitas/components/my_fridge_page/add_ingredient_listview.dart';
import 'package:app_receitas/components/public/bottom_bar.dart';
import 'package:app_receitas/components/public/center_bottom_bar.dart';
import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';
import '../components/my_fridge_page/add_ingredient_input.dart';
import '../components/profile_page/options_list.dart';
import '../components/profile_page/profile_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      body: Column(
          children: [
              const SizedBox(height: 45),
              Align(
                alignment: const FractionalOffset(0, 0),
                child: text('Meu perfil', 40),
              ),
              SizedBox(height: 10),
              const ProfileCard(),
              const OptionsList(),
        ]),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CenterBottomBar(press: () {  },),
      bottomNavigationBar: BottomBar(press: () {  },),
    );
  }
}
