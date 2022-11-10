import 'package:app_receitas/components/login_page/forgot_your_password_check.dart';
import 'package:app_receitas/components/login_page/google_button.dart';
import 'package:app_receitas/components/public/functions.dart';
import 'package:app_receitas/components/public/send_button.dart';
import 'package:app_receitas/components/login_page/new_around_here_check.dart';
import 'package:app_receitas/components/public/separator_widget.dart';
import 'package:app_receitas/components/public/text_field_container.dart';
import 'package:app_receitas/constants.dart';
import 'package:app_receitas/pages/home_page.dart';
import 'package:app_receitas/pages/recover_password_page.dart';
import 'package:app_receitas/pages/register_page.dart';
import 'package:app_receitas/services/auth_service.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _form = GlobalKey<FormState>();
  final _email = GlobalKey<FormState>();
  late String email = '';
  final _password = GlobalKey<FormState>();
  late String senha = '';
  late bool _passwordVisible;
  final bool endSuffixIcon = true;

  late bool isLogin = true;
  late String titulo;
  late String actionButton;
  late String toggleButton;

  @override
  void initState() {
    super.initState();
    setFormAction(true);
    _passwordVisible = false;
  }

  setFormAction(bool action){
    setState(() {
      isLogin = action;
      if(isLogin){
        titulo = "Bem vindo!";
        actionButton = "Login";
        toggleButton = "Não possui uma conta? Cadastre-se!";
      } else {
        titulo = "Crie sua conta!";
        actionButton = "Cadastrar";
        toggleButton = "Já tem uma conta? Faça login.";
      }
    });
  }

  login() async {
    try {
      await context.read<AuthService>().login(
        _email.toString(),
        _password.toString()
      );
    } on AuthException catch (e) {
      ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(
        content: Text(e.message)
      ));
    }
  }

  registrar() async {
    try {
      await context.read<AuthService>().registrar(
        _email.toString(),
        _password.toString()
      );
    } on AuthException catch (e) {
      ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(
        content: Text(e.message)
      ));
    }
  }

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
            Form(
              key: _form,
              child: TextFieldContainer(
                child: TextFormField(
                  key: _email,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) => validateEmail(value),
                  onChanged: (value) {
                    setState(() {
                      email = (value.isEmpty) ? '' : value;
                    });
                  },
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.email_outlined,
                      color: blackTextColor,
                      size: 35,
                    ),
                    hintText: 'E-mail',
                  ),
                ),
              ),
            ),
            TextFieldContainer(
              child: TextFormField(
                key: _password,
                obscureText: !_passwordVisible,
                onChanged: (value) {
                  setState(() {
                    senha = (value.isEmpty) ? '' : value;
                  });
                },
                decoration: InputDecoration(
                  hintText: "Senha",
                  icon: const Icon(
                    Icons.lock_outline,
                    color: blackTextColor,
                    size: 35,
                  ),
                  suffixIcon: (endSuffixIcon
                      ? IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: blackTextColor,
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                          color: blackTextColor,
                        )
                      : null),
                ),
              ),
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
                if(_form.currentState!.validate()) {
                  if(isLogin) {
                    login();
                  } else {
                    registrar();
                  }
                }
                  
                    // ? Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //     builder: ((context) => const HomePage()),
                    //   ))
                    // : showDialog<void>(
                    //     context: context,
                    //     barrierDismissible: false,
                    //     builder: (context) {
                    //       return AlertDialog(
                    //         title: const Text('Valores incorretos.'),
                    //         content: const Text(
                    //             'Favor inserir valores corretos para email e senha.'),
                    //         actions: <Widget>[
                    //           TextButton(
                    //             child: const Text('Ok'),
                    //             onPressed: () {
                    //               Navigator.of(context).pop();
                    //             },
                    //           ),
                    //         ],
                    //       );
                    //     },
                    //   );
              },
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
            // const SizedBox(height: 10),
            // Text(email),
          ],
        ),
      ),
    );
  }
}
