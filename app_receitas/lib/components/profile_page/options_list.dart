import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/auth_service.dart';

class OptionsList extends StatefulWidget {
  const OptionsList({super.key});

  @override
  State<OptionsList> createState() => _OptionsListState();
}
class _OptionsListState extends State<OptionsList> {

  logout() async {
    await context.read<AuthService>().logout();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        children: [
          text("Opções", 30),
          const SizedBox(
            height: 10,
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.people),
              title: Text(
                'Recomendar a um amigo',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 71, 71, 101),
                ),
              ),
              iconColor: Color.fromARGB(255, 229, 144, 101),
            ),
          ),
          const Card(
            child: ListTile(
              dense: true,
              leading: Icon(Icons.settings),
              title: Text(
                'Configurações',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 71, 71, 101),
                ),
              ),
              iconColor: Color.fromARGB(255, 229, 144, 101),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.help_outline),
              title: Text(
                'Ajuda',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 71, 71, 101),
                ),
              ),
              iconColor: Color.fromARGB(255, 229, 144, 101),
            ),
          ),
          const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: OutlinedButton(
                onPressed: () => context.read<AuthService>().logout(),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.red,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Sair do App',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          // const Card(
          //   child: ListTile(
          //     leading: Icon(Icons.logout_outlined),
          //     title: Text(
          //       'Sair da conta',
          //       textAlign: TextAlign.start,
          //       style: TextStyle(
          //         fontSize: 20,
          //         fontWeight: FontWeight.w500,
          //         color: Color.fromARGB(255, 241, 97, 97),
          //       ),
          //     ),
          //     iconColor: Color.fromARGB(255, 241, 97, 97),
          //   ),
          // )
        ],
      ),
    );
  }
}
