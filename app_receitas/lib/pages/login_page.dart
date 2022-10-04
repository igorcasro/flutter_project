import 'package:app_receitas/components/forgot_your_password_check.dart';
import 'package:app_receitas/components/google_button.dart';
import 'package:app_receitas/components/send_button.dart';
import 'package:app_receitas/components/new_around_here_check.dart';
import 'package:app_receitas/components/separator_widget.dart';
import 'package:app_receitas/components/used_input_password_field.dart';
import 'package:app_receitas/components/used_input_text_field.dart';
import 'package:app_receitas/constants.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: loginAndRegisterColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              './assets/images/logo_inicial.png',
              width: double.infinity,
            ),
            Align(
              alignment: const FractionalOffset(0, 0),
              child: text('Login', 40),
            ),
            UsedInputTextField(
              hintText: 'E-mail',
              onChanged: (value) {},
            ),
            UsedInputPasswordField(
              onChanged: (value) {},
            ),
            ForgotYourPasswordCheck(
              press: () {},
            ),
            SendButton(
              text: "Fazer login",
              onPressed: () {},
            ),
            const SeparatorWidget(),
            const SizedBox(height: 5),
            GoogleButton(
              onPressed: () {},
            ),
            const NewAroundHereCheck(),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
