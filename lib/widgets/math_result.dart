import 'package:flutter/material.dart';

class MainResultText extends StatelessWidget {
  final String text;

  const MainResultText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            fontSize: 50, color: Colors.white, fontFamily: 'Minecraft'));
  }
}
