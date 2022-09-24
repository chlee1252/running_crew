import 'package:flutter/material.dart';

import 'icon_with_counter.dart';

class IconCountArea extends StatelessWidget {
  const IconCountArea(
      {Key? key, required this.likeCount, required this.runCount})
      : super(key: key);

  final int likeCount;
  final int runCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconWithCounter(
          icon: Icons.thumb_up,
          color: Colors.blue,
          count: likeCount,
        ),
        const SizedBox(
          width: 20,
        ),
        IconWithCounter(
          icon: Icons.directions_run,
          count: runCount,
        ),
      ],
    );
  }
}
