import 'package:flutter/material.dart';

class ImageTextBox extends StatelessWidget {
  const ImageTextBox({
    Key? key,
    // required this.image,
    required this.title,
    this.subText = "",
  }) : super(
          key: key,
        );

  // final Image image;
  final String title;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 30.0,
        horizontal: 10.0,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            20.0,
          ),
        ),
      ),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.65,
      ),
      height: 120.0,
      child: Row(
        children: [
          const Placeholder(
            fallbackWidth: 40.0,
            fallbackHeight: 20.0,
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                ),
                Text(
                  subText,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
