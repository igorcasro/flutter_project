import 'package:app_receitas/pages/login_page.dart';
import 'package:app_receitas/widgets/auth_check.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../constants.dart';
import '../../pages/help_page.dart';
import '../../services/auth_service.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}
class _BodyState extends State<Body> {
  logout() async {
    try {
      await context.read<AuthService>().logout();
      Navigator.push(
        context,
        MaterialPageRoute(
        builder: ((context) => const LoginPage())
        ),
      );
    } catch (e) {
      print("ENTROU AUQI");
    }
  }

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
            icon: const Icon(Icons.person, color: Color.fromARGB(255, 255, 166, 93),),
            press: () => {},
          ),
          ProfileMenu(
            text: "Configurações",
            icon: const Icon(Icons.settings, color: Color.fromARGB(255, 255, 166, 93),),
            press: () {},
          ),
          ProfileMenu(
            text: "Ajuda",
            icon: const Icon(Icons.help, color: Color.fromARGB(255, 255, 166, 93),),
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                builder: ((context) => const HelpPage())
                ),
              );
            },
          ),
          ProfileMenu(
            text: "Sair da conta",
            icon: const Icon(Icons.logout, color: Color.fromARGB(255, 255, 166, 93),),
            press: () {
              print(AuthService().usuario);
              logout();
            },
          ),
        ],
      ),
    );
  }
}