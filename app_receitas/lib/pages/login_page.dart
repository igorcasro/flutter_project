import 'package:app_receitas/components/login_page/forgot_your_password_check.dart';
import 'package:app_receitas/components/login_page/google_button.dart';
import 'package:app_receitas/components/public/send_button.dart';
import 'package:app_receitas/components/login_page/new_around_here_check.dart';
import 'package:app_receitas/components/public/separator_widget.dart';
import 'package:app_receitas/components/public/used_input_password_field.dart';
import 'package:app_receitas/components/public/used_input_text_field.dart';
import 'package:app_receitas/constants.dart';
import 'package:app_receitas/pages/home_page.dart';
import 'package:app_receitas/pages/recover_password_page.dart';
import 'package:app_receitas/pages/register_page.dart';

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
              alignment: const FractionalOffset(0.04, 0),
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
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const RecoverPasswordPage()),
                  ),
                );
              },
            ),
            SendButton(
              text: "Fazer login",
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: ((context) => const HomePage()),
                ));
              },
              icon: const Icon(null),
            ),
            const SeparatorWidget(),
            const SizedBox(height: 5),
            GoogleButton(
              onPressed: () {},
            ),
            NewAroundHereCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const RegisterPage()),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
