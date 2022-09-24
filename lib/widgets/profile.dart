import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key, required this.name}) : super(key: key);

  final String name;

  // final Image image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 25.0,
          backgroundColor: Colors.blue,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          name,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 9.0,
          ),
        ),
      ],
    );
  }
}
