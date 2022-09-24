import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.width = 150.0,
    this.height = 45.0,
    this.margin,
    this.radius = 18.0,
    this.color = Colors.black,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                radius,
              ),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        child: child,
      ),
    );
  }
}
