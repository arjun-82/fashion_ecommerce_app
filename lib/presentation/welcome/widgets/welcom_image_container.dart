import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class WelcomeCapsuleContainerSmall extends StatelessWidget {
  const WelcomeCapsuleContainerSmall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 200,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(WelcomeImage.image),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(100))),
    );
  }
}

class WelcomeCircularContainer extends StatelessWidget {
  const WelcomeCircularContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 200,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(WelcomeImage.image),
              fit: BoxFit.cover),
          shape: BoxShape.circle,
        ));
  }
}

class WelcomeCapsuleShapeContainer extends StatelessWidget {
  const WelcomeCapsuleShapeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingChart.allSmall,
      child: Container(
        height: 450,
        width: 200,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(WelcomeImage.image),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(100))),
      ),
    );
  }
}


class WelcomeImage{
  static const String image = "https://images.pexels.com/photos/1926769/pexels-photo-1926769.jpeg?auto=compress&cs=tinysrgb&w=600";
}