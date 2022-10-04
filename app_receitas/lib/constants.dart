import 'package:flutter/material.dart';

const primaryColor = Color(0xFFE58F65);
const loginAndRegisterColor = Color(0XFFFFFFFF);
const whiteBackgroundColor = Color(0XFFF8F8F8);
const blackTextColor = Color(0xFF474747);
const searchBoxAndNotFoundColor = Color(0xFFCCD2E3);
const linkColor = Color.fromARGB(255, 15, 15, 237);

Widget text(text, double tamanho) {
  return Container(
    margin: const EdgeInsets.only(
      top: 5,
      left: 20,
    ),
    child: Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: tamanho,
        fontWeight: FontWeight.bold,
        color: blackTextColor,
      ),
    ),
  );
}
