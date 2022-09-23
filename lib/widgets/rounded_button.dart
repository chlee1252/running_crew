import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {Key? key,
      required this.child,
      required this.onPressed,
      this.width = 150.0,
      this.height = 45.0,
      this.margin})
      : super(key: key);

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final VoidCallback onPressed;

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
                18.0,
              ),
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
