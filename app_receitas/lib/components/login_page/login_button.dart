import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  const LoginButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: size.height * 0.07,
      width: size.width * 0.85,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(29),
          ),
          primary: primaryColor,
          textStyle: const TextStyle(
            fontSize: 20,
            color: loginAndRegisterColor,
          ),
        ),
        onPressed: onPressed,
        child: const Text(
          "Fazer Login",
          style: TextStyle(color: loginAndRegisterColor),
        ),
      ),
    );
  }
}
