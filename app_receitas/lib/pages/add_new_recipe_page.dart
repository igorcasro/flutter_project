import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';

class AddNewRecipePage extends StatelessWidget {
  const AddNewRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: primaryColor,
            size: 40,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: const Color(0xffF8F8F8),
        elevation: 0,
      ),
    );
  }
}
