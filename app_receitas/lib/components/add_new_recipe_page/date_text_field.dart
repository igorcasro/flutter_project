// ignore_for_file: depend_on_referenced_packages

import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:intl/date_symbol_data_local.dart';

class DateTextField extends StatefulWidget {
  const DateTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<DateTextField> createState() => _DateTextFieldState();
}

class _DateTextFieldState extends State<DateTextField> {
  final TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: size.width * 0.9,
        height: 60,
        child: TextField(
          controller: _date,
          decoration: InputDecoration(
            hintText: 'dd/mm/yyyy',
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            suffix: const Icon(
              Icons.calendar_today_rounded,
              color: Colors.grey,
            ),
          ),
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              locale: const Locale('pt', 'BR'),
              builder: (context, child) {
                return Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: const ColorScheme.light(
                      primary: primaryColor,
                    ),
                  ),
                  child: child!,
                );
              },
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2010),
              lastDate: DateTime(2101),
            );

            if (pickedDate != null) {
              setState(
                () {
                  _date.text = DateFormat('dd/MM/yyyy').format(pickedDate);
                },
              );
            }
          },
        ),
      ),
    );
  }
}
