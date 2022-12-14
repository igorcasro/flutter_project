// ignore_for_file: unused_field

import 'package:app_receitas/components/public/back_to_start_button.dart';
import 'package:app_receitas/components/public/send_button.dart';
import 'package:app_receitas/constants.dart';
import 'package:app_receitas/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/auth_service.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _email = TextEditingController();
  late String email = '';
  final _password = TextEditingController();
  late String senha = '';
  late bool _passwordVisible;
  final bool endSuffixIcon = true;
  bool loading = false;

  late bool isLogin = true;
  late String titulo;
  late String actionButton;
  late String toggleButton;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  registrar() async {
    setState(() {
      loading = true;
    });

    try {
      await context.read<AuthService>().registrar(_email.text, _password.text);

      setState(() {
        loading = false;
      });
    } on AuthException catch (e) {
      setState(() {
        loading = false;
      });

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message)));
    }
  }

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
            // CommonInputTextField(
            //   hintText: 'Nome de usu??rio',
            //   icon: Icons.person,
            //   onChanged: (value) {},
            // ),
            TextFormField(
              controller: _email,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Informe o email corretamente!';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _password,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Informa sua senha!';
                } else if (value.length < 6) {
                  return 'Sua senha deve ter no m??nimo 6 caracteres';
                }
                return null;
              },
            ),

            // CommonInputTextField(
            //   hintText: 'Telefone',
            //   icon: Icons.local_phone_outlined,
            //   onChanged: (value) {},
            // ),
            SendButton(
              onPressed: () {
                registrar();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Conta cadastrada com sucesso."),
                  ),
                );
                Navigator.of(context).pop();
              },
              text: 'Realizar Cadastro',
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: BackToStartButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
