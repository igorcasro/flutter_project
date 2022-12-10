import 'package:flutter/material.dart';

class IngredientsTextField extends StatelessWidget {
  const IngredientsTextField({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: size.width * 0.9,
        height: 60,
        child: SingleChildScrollView(
          child: TextField(
            keyboardType: TextInputType.multiline,
            minLines: 1,
            maxLines: 50,
            textInputAction: TextInputAction.newline,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
