import 'package:flutter/material.dart';
import 'package:running_crew/service/base_map.dart';
import 'package:running_crew/widgets/rounded_button.dart';

import '../gen/assets.gen.dart';
import '../widgets/image_text_box.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.white60,
        title: const Text(
          "4567",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 25.0,
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
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
                      margin: const EdgeInsets.only(bottom: 40.0),
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
        ),
      ),
    );
  }
}
