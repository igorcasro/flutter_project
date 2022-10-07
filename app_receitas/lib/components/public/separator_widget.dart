import 'package:flutter/material.dart';

class SeparatorWidget extends StatelessWidget {
  const SeparatorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 30, right: 15),
            child: Divider(
              color: Colors.black,
              height: 20,
            ),
          ),
        ),
        Text("OU"),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 30),
            child: Divider(
              color: Colors.black,
              height: 20,
            ),
          ),
        ),
      ],
    );
  }
}
