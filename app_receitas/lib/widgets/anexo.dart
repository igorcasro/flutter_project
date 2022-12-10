import 'dart:io';

import 'package:flutter/material.dart';

class Anexo extends StatelessWidget {
  final File? arquivo;
  const Anexo({super.key, this.arquivo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.file(
              arquivo!,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
