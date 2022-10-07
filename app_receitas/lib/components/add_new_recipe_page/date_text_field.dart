import 'package:flutter/material.dart';

class DateTextField extends StatelessWidget {
  const DateTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: size.width * 0.9,
        height: 60,
        child: TextField(
          decoration: InputDecoration(
            hintText: 'dd/mm/yyyy',
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            suffix: const Icon(
              Icons.calendar_today,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
