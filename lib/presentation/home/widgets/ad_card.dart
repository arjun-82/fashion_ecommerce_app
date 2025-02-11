import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class AdHomeCard extends StatelessWidget {
  final String? imageUrl;
  final VoidCallback? onPressed;
  const AdHomeCard({
    super.key,
    this.imageUrl, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: PaddingChart.allSmall,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration:  BoxDecoration(
            color: Colors.yellow,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  imageUrl ??
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqHqjn9kW8IF34SqziLsJm4wRR1IR-DL-CMQ&s")),
            borderRadius: const BorderRadius.all(Radius.circular(18))),
        child: Stack(
          children: [
            Positioned(
                bottom: 20,
                right: 20,
                child: SizedBox(
                    height: 35,
                    width: 95,
                    child: ElevatedButton(
                        onPressed:onPressed?? () {},
                        child: Text(
                          "Shop now",
                          style: TextStyle(
                            color: isDarkMode ? TLight.primary : TDark.primary,
                            fontSize: TextSize.px14,
                            fontWeight: FontWeight.w500,
                          ),
                        )))),
          ],
        ),
      ),
    );
  }
}
