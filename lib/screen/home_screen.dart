import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import '../service/base_map.dart';
import '../widgets/image_text_box.dart';
import '../widgets/rounded_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        const BaseMap(),
        Column(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: ImageTextBox(
                  asset: Assets.images.run.svg(
                    width: 40,
                    height: 50,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 30.0,
                    horizontal: 20.0,
                  ),
                  title: "내 주변 러닝 코스 알아보기",
                  subText: "구로디지털단지 일대",
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: RoundedButton(
                  margin: const EdgeInsets.only(bottom: 140.0),
                  child: const Text(
                    "러닝 시작",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                  onPressed: () => print(123123),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
