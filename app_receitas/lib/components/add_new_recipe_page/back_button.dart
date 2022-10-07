import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new_rounded,
        color: primaryColor,
        size: 40,
      ),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}
