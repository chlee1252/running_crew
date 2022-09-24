import 'package:flutter/material.dart';
import 'package:running_crew/widgets/icon_count_area.dart';
import 'package:running_crew/widgets/padded_text.dart';
import 'package:running_crew/widgets/profile.dart';
import 'package:running_crew/widgets/rounded_button.dart';
import 'package:running_crew/widgets/rounded_container.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String area = "신촌 - 여의도";
    const int distance = 10;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const PaddedText(
          text: "내 주변 인기 러닝코스",
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Center(
          child: RoundedContainer(
            maxWidth: MediaQuery.of(context).size.width * 0.65,
            height: 140,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 25.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      const Spacer(flex: 1),
                      const Profile(name: "Marc Lee"),
                      const Spacer(flex: 2),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            "$area",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            "${distance}KM",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                          // DistanceText(area: "신촌 - 여의도", distance: "10"),
                          IconCountArea(likeCount: 23, runCount: 439),
                        ],
                      ),
                      const Spacer(flex: 1),
                    ],
                  ),
                  RoundedButton(
                    onPressed: () => print("이 코스 자세히 보기"),
                    height: 25.0,
                    color: Colors.grey,
                    radius: 7.0,
                    child: const Text("이 코스 자세히 보기"),
                  ),
                ],
              ),
            ),
          ),
        ),
        const PaddedText(
          text: "지역별 러닝코스",
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
