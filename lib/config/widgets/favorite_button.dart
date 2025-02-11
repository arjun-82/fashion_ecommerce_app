import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class FavButton extends StatelessWidget {
  const FavButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Material(
      shape: const CircleBorder(),
      color: isDarkMode ? ButtonDark.active : ButtonLight.active,
      elevation: 1,
      child: Stack(
        children: [
          Container(
            height: 34,
            width: 34,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            top: 3,
            left: 2.1,
            child: LikeButton(
              circleColor: const CircleColor(
                  start: Color(0xff00ddff), end: Color(0xff0099cc)),
              bubblesColor: const BubblesColor(
                  dotPrimaryColor: Colors.red,
                  dotSecondaryColor: Colors.white,
                  dotLastColor: Colors.redAccent),
              likeBuilder: (bool isLiked) {
                return Icon(
                  Icons.favorite,
                  color: isLiked
                      ? Colors.red
                      : MainPalette.shade60.withOpacity(.5),
                  size: 24,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
