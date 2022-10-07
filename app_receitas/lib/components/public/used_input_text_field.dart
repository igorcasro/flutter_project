import 'package:app_receitas/components/public/functions.dart';
import 'package:app_receitas/components/public/text_field_container.dart';
import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';

class UsedInputTextField extends StatefulWidget {
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
  State<UsedInputTextField> createState() => _UsedInputTextFieldState();
}

class _UsedInputTextFieldState extends State<UsedInputTextField> {
  final email = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        key: email,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) => validateEmail(value),
        onChanged: ((value) => email),
        decoration: InputDecoration(
          icon: Icon(
            widget.icon,
            color: blackTextColor,
            size: 35,
          ),
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
