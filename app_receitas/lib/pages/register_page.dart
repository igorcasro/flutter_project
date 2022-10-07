import 'package:app_receitas/components/public/back_to_start_button.dart';
import 'package:app_receitas/components/public/send_button.dart';
import 'package:app_receitas/components/public/telephone_input_text_field.dart';
import 'package:app_receitas/components/public/used_input_password_field.dart';
import 'package:app_receitas/components/public/used_input_text_field.dart';
import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: loginAndRegisterColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              './assets/images/undraw_Sign_in_re_o58h.png',
              width: double.infinity,
            ),
            Align(
              alignment: const FractionalOffset(0.1, 0),
              child: text('Cadastre-se', 55),
            ),
            CommonInputTextField(
              hintText: 'Nome de usuário',
              icon: Icons.person,
              onChanged: (value) {},
            ),
            UsedInputTextField(
              hintText: 'E-mail',
              onChanged: (value) {},
            ),
            UsedInputPasswordField(
              onChanged: (value) {},
              endSuffixIcon: false,
            ),
            CommonInputTextField(
              hintText: 'Telefone',
              icon: Icons.local_phone_outlined,
              onChanged: (value) {},
            ),
            SendButton(
              onPressed: () {},
              text: 'Realizar Cadastro',
              icon: const Icon(null),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: BackToStartButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
