import 'package:flutter/material.dart';
import 'package:running_crew/widgets/rounded_container.dart';

class ImageTextBox extends StatelessWidget {
  const ImageTextBox({
    Key? key,
    required this.asset,
    required this.title,
    this.subText = "",
    this.padding,
  }) : super(
          key: key,
        );

  final Widget asset;
  final String title;
  final String subText;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      padding: padding,
      height: 120,
      maxWidth: MediaQuery.of(context).size.width * 0.65,
      child: Row(
        children: [
          asset,
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
