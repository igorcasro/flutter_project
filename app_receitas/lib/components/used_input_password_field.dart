import 'package:app_receitas/components/text_field_container.dart';
import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';

class UsedInputPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const UsedInputPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: const InputDecoration(
          hintText: "Senha",
          icon: Icon(
            Icons.lock_outline,
            color: blackTextColor,
          ),
          suffixIcon: Icon(
            Icons.visibility_outlined,
            color: blackTextColor,
          ),
        ),
      ),
    );
  }
}
