import 'package:app_receitas/components/text_field_container.dart';
import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';

class UsedInputTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const UsedInputTextField({
    Key? key,
    required this.hintText,
    this.icon = Icons.email_outlined,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(icon, color: blackTextColor),
          hintText: hintText,
        ),
      ),
    );
  }
}
