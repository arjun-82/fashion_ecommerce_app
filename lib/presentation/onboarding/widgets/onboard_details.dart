import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class OnboardDetails extends StatelessWidget {
  const OnboardDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 9,
        child: SizedBox(
          child: CardSlider(
            height: double.infinity,
            card: List.generate(3,(index) => OnBoardInfomation(
                      title: sliderTitle[index],
                    )),
            autoSlider: false,
          ),
        ));
  }
}

List<String> sliderImage = [
  "assets/Illustration1.svg",
  "assets/Illustration2.svg",
  "assets/Illustration3.svg",
];
List<String> sliderTitle = [
  "Your style tells about you",
  "What you wear is what you are",
  "Gwnw is the new black",
];

class OnBoardInfomation extends StatelessWidget {
  final String? imageUrl, title, description;
  const OnBoardInfomation({
    super.key,
    this.imageUrl,
    this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: SvgPicture.asset(imageUrl ?? "assets/Illustration1.svg")),
          Positioned(
            bottom: 130,
            left: 20,
            right: 20,
            child: Text(
              title ?? "Your style tells about you",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: TextSize.px28,
                fontFamily: Font.secondaryFont,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Text(
              description ??
                  "There are many clothes with designs that are suitable for you today ",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: TextSize.px16,
                fontFamily: Font.primaryFont,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
