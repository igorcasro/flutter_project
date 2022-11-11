import 'package:app_receitas/components/public/back_to_start_button.dart';
import 'package:app_receitas/constants.dart';
import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  final _helptext =
      "A primeira coisa que você deve fazer ao entrar no Fridgey é adicionar novos ingredientes à sua geladeira. Abra a geladeira (ou o armário) e vá adicionando os ovos, as batatas, o leite... o que você tiver na geladeira! Em seguida, vá para a página de Achar Receitas, escolha uma delas e siga o modo de preparo!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: loginAndRegisterColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 200, top: 150),
              child: Blob.fromID(
                id: const ['6-4-46477'],
                size: 400,
                styles: BlobStyles(
                  color: const Color.fromARGB(255, 255, 247, 209),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 500),
              child: Image.asset(
                './assets/images/opening_fridge.png',
                width: 350,
              ),
            ),
            Column(
              children: <Widget>[
                const SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: const FractionalOffset(0.03, 0),
                      child: text('Ajuda', 40),
                    ),
                    Align(
                      alignment: const FractionalOffset(0.03, 0),
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, top: 10),
                        width: 350,
                        child: Text(
                          _helptext,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: blackTextColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: BackToStartButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
