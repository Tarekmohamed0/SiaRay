import 'package:flutter/material.dart';

class ShaderText extends StatelessWidget {
  ShaderText({super.key, required this.text, required this.style});
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.bottomLeft,
        colors: [
          Color.fromRGBO(69, 134, 255, 1),
          Color.fromRGBO(23, 24, 26, 1),
        ],
      ).createShader(
        Rect.fromLTRB(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
