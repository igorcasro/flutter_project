import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';

class BackToStartButton extends StatelessWidget {
  final VoidCallback onPressed;
  const BackToStartButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
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
    );
  }
}
