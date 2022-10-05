import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';

class NewAroundHereCheck extends StatelessWidget {
  const NewAroundHereCheck({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "É novo por aqui? ",
          style: TextStyle(
            color: blackTextColor,
            fontSize: 16,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            "Cadastre-se!",
            style: TextStyle(
              color: linkColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
