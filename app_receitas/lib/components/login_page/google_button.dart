import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  final VoidCallback onPressed;
  const GoogleButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: size.height * 0.07,
      width: size.width * 0.85,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(29)),
          primary: Colors.grey[200],
          textStyle: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        onPressed: onPressed,
        child: RichText(
          text: TextSpan(
            children: [
              WidgetSpan(
                child: Image.asset(
                  './assets/images/google-37.png',
                  width: 22,
                  height: 22,
                ),
              ),
              const WidgetSpan(
                child: SizedBox(
                  width: 24,
                ),
              ),
              const TextSpan(
                  text: "Entrar com Google",
                  style: TextStyle(fontSize: 18, color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
