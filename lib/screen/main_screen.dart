import 'package:flutter/material.dart';
import 'package:running_crew/widgets/image_text_box.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            const Placeholder(),
            Column(
              children: [
                Container(),
                const Center(
                    child: ImageTextBox(
                  title: "내 주변 러닝 코스 알아보기",
                  subText: "신촌 - 망원동 일대",
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
