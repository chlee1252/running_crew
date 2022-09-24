import 'package:flutter/material.dart';

class PaddedText extends StatelessWidget {
  const PaddedText({Key? key, required this.text, this.textStyle})
      : super(key: key);

  final String text;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
