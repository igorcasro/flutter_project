import 'package:app_receitas/components/public/text_field_container.dart';
import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';

class UsedInputPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final bool endSuffixIcon;
  const UsedInputPasswordField({
    Key? key,
    required this.onChanged,
    this.endSuffixIcon = true,
  }) : super(key: key);

  @override
  State<UsedInputPasswordField> createState() => _UsedInputPasswordFieldState();
}

class _UsedInputPasswordFieldState extends State<UsedInputPasswordField> {
  late bool _passwordVisible;
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: !_passwordVisible,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: "Senha",
          icon: const Icon(
            Icons.lock_outline,
            color: blackTextColor,
            size: 35,
          ),
          suffixIcon: (widget.endSuffixIcon
              ? IconButton(
                  icon: Icon(
                    _passwordVisible
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: blackTextColor,
                  ),
                  onPressed: () {
                    // Update the state i.e. toogle the state of passwordVisible variable
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                  color: blackTextColor,
                )
              : null),
        ),
      ),
    );
  }
}
