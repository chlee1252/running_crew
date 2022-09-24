import 'package:flutter/material.dart';

class IconWithCounter extends StatelessWidget {
  const IconWithCounter(
      {Key? key,
      required this.icon,
      this.color = Colors.black,
      this.size = 12.0,
      required this.count})
      : super(key: key);

  final IconData icon;
  final Color color;
  final double size;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: size,
        ),
        const SizedBox(
          width: 2.0,
        ),
        Text(
          count.toString(),
          style: TextStyle(
            fontSize: size,
          ),
        ),
      ],
    );
  }
}
