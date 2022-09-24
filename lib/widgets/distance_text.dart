import 'package:flutter/material.dart';

class DistanceText extends StatelessWidget {
  const DistanceText({Key? key, required this.area, required this.distance})
      : super(key: key);

  final String area;
  final String distance;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$area\n${distance}KM",
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
    );
  }
}
