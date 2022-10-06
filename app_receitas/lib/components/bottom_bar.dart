import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final VoidCallback press;
  const BottomBar({
    Key? key,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.white,
      child: IconTheme(
        data: const IconThemeData(color: Color(0xFFE58F65)),
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/icons/home.png')),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/icons/search.png')),
              const SizedBox(
                width: 50,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/icons/list.png')),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/icons/person.png')),
            ],
          ),
        ),
      ),
    );
  }
}