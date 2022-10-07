import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';

class ForgotYourPasswordCheck extends StatelessWidget {
  final VoidCallback press;
  const ForgotYourPasswordCheck({
    Key? key,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: GestureDetector(
            onTap: press,
            child: const Text(
              "Esqueceu sua senha?",
              style: TextStyle(
                color: linkColor,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
