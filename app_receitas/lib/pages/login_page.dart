import 'package:app_receitas/components/login_page/forgot_your_password_check.dart';
import 'package:app_receitas/components/login_page/google_button.dart';
import 'package:app_receitas/components/login_page/new_around_here_check.dart';
import 'package:app_receitas/components/public/functions.dart';
import 'package:app_receitas/components/public/send_button.dart';
import 'package:app_receitas/components/public/separator_widget.dart';
import 'package:app_receitas/components/public/text_field_container.dart';
import 'package:app_receitas/constants.dart';
import 'package:app_receitas/pages/recover_password_page.dart';
import 'package:app_receitas/pages/register_page.dart';
import 'package:app_receitas/services/auth_service.dart';
import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final senha = TextEditingController();

  bool loading = false;

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

  setFormAction(bool action) {
    setState(() {
      isLogin = action;
      if (isLogin) {
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
    setState(() => loading = true);
    try {
      await context.read<AuthService>().login(email.text, senha.text);
      setState(() => loading = false);
    } on AuthException catch (e) {
      setState(() => loading = false);
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
          children: [
            !loading
                ? Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 200),
                        child: Blob.fromID(
                          id: const ['6-4-46477'],
                          size: 300,
                          styles: BlobStyles(
                            color: const Color.fromARGB(255, 255, 247, 209),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 300, top: 400),
                        child: Blob.fromID(
                          id: const ['6-4-46477'],
                          size: 200,
                          styles: BlobStyles(
                            color: const Color.fromARGB(255, 255, 247, 209),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 0, top: 680),
                        child: Blob.fromID(
                          id: const ['6-4-46477'],
                          size: 300,
                          styles: BlobStyles(
                            color: const Color.fromARGB(255, 255, 247, 209),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 60,
                          ),
                          Image.asset(
                            './assets/images/fridgey_capa3.png',
                            width: 350,
                          ),
                          Align(
                            alignment: const FractionalOffset(0.04, 0),
                            child: text('Login', 40),
                          ),
                          Form(
                            key: formKey,
                            child: TextFieldContainer(
                              child: TextFormField(
                                controller: email,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) => validateEmail(value),
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
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: senha,
                                  obscureText: !_passwordVisible,
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
                                                  : Icons
                                                      .visibility_off_outlined,
                                              color: blackTextColor,
                                            ),
                                            onPressed: () {
                                              // Update the state i.e. toogle the state of passwordVisible variable
                                              setState(() {
                                                _passwordVisible =
                                                    !_passwordVisible;
                                              });
                                            },
                                            color: blackTextColor,
                                          )
                                        : null),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ForgotYourPasswordCheck(
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) =>
                                      const RecoverPasswordPage()),
                                ),
                              );
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SendButton(
                            text: "Fazer login",
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                login();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => const HomePage())),
                                );
                              }
                            },
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const SeparatorWidget(),
                          const SizedBox(
                            height: 5,
                          ),
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
                        ],
                      )
                    ],
                  )
                : Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 90, top: 400),
                        child: SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(
                            color: Color.fromARGB(255, 255, 109, 64),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 70,
                          top: 10,
                        ),
                        child: text(
                          "Realizando login...",
                          24,
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
