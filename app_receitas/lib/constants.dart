import 'package:flutter/material.dart';

const primaryColor = Color(0xFFE58F65);
const loginAndRegisterColor = Color(0XFFFFFFFF);
const whiteBackgroundColor = Color(0XFFF3F3F3);
const blackTextColor = Color(0xFF474747);
const searchBoxAndNotFoundColor = Color(0xFFCCD2E3);
const linkColor = Color.fromARGB(255, 167, 167, 177);
const emptyTextColor = Color.fromRGBO(189, 196, 214, 100);
const bottomBarItensColor = Color.fromARGB(255, 203, 199, 199);

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

Widget configText(text, double tamanho) {
  return Container(
    margin: const EdgeInsets.only(
      top: 5,
      left: 0,
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

Widget centeredText(text, double tamanho) {
  return Container(
    margin: const EdgeInsets.only(
      left: 0,
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

Widget descriptionText(text, double tamanho) {
  return SizedBox(
    width: 280,
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: tamanho,
        fontWeight: FontWeight.normal,
        color: blackTextColor,
      ),
    ),
  );
}

Widget emptyText(text, double tamanho) {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
      bottom: 30,
    ),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: tamanho,
        fontWeight: FontWeight.bold,
        color: emptyTextColor,
      ),
    ),
  );
}
