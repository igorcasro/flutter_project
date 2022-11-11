// ignore_for_file: avoid_print

import 'package:app_receitas/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/home_page.dart';
import '../pages/login_page.dart';

class AuthCheck extends StatefulWidget {
  const AuthCheck({super.key});

  @override
  State<AuthCheck> createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);
    print("user: ");
    print(auth.usuario?.uid);

    if (auth.isLoading) {
      print("AAAAA");
      return loading();
    } else if (auth.usuario == null) {
      print("BBBBB");
      return const LoginPage();
    } else {
      print("CCCCC");
      return const HomePage();
    }
  }
}

loading() {
  return const Scaffold(
    body: Center(
      child: CircularProgressIndicator(),
    ),
  );
}
