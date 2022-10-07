import 'package:app_receitas/components/public/text_field_container.dart';
import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';

class UsedInputPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final bool endSuffixIcon;
  const UsedInputPasswordField({
    Key? key,
    required this.onChanged,
    this.endSuffixIcon = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Senha",
          icon: const Icon(
            Icons.lock_outline,
            color: blackTextColor,
            size: 35,
          ),
          suffixIcon: (endSuffixIcon
              ? const Icon(
                  Icons.visibility_outlined,
                  color: blackTextColor,
                )
              : null),
        ),
      ),
    );
  }
}
