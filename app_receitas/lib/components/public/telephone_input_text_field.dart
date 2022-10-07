import 'package:app_receitas/components/public/text_field_container.dart';
import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';

class CommonInputTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const CommonInputTextField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: blackTextColor,
            size: 35,
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
