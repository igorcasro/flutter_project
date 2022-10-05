import 'package:app_receitas/components/send_button.dart';
import 'package:app_receitas/components/used_input_text_field.dart';
import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';

class RecoverPasswordPage extends StatelessWidget {
  const RecoverPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: loginAndRegisterColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              './assets/images/logo_inicial.png',
              width: double.infinity,
            ),
            Align(
              alignment: const FractionalOffset(0.03, 0),
              child: text('Recuperar', 40),
            ),
            Align(
              alignment: const FractionalOffset(0.03, 0),
              child: text('senha', 40),
            ),
            Align(
              alignment: const FractionalOffset(0.07, 0),
              child: text('Informe seu e-mail para a', 20),
            ),
            Align(
              alignment: const FractionalOffset(0.07, 0),
              child: text('recuperação da senha.', 20),
            ),
            UsedInputTextField(
              hintText: 'E-mail',
              onChanged: (value) {},
            ),
            Align(
              alignment: const FractionalOffset(0.1, 0),
              child: text('Você receberá um e-mail com as', 16),
            ),
            Align(
              alignment: const FractionalOffset(0.1, 0),
              child: text('instruções para recuperação.', 16),
            ),
            SendButton(onPressed: () {}, text: "Enviar e-mail"),
            FloatingActionButton.extended(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: primaryColor,
              ),
              label: Text(
                'Voltar ao início'.toUpperCase(),
                style: const TextStyle(color: primaryColor),
              ),
              backgroundColor: loginAndRegisterColor,
              elevation: 0,
            ),
          ],
        ),
      ),
    );
  }
}
