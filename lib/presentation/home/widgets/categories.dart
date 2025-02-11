import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
        height: 120,
        child: ListView.builder(
            itemCount: 7,
            shrinkWrap: true,
            padding: PaddingChart.horizontalSmall,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
                  padding: PaddingChart.allSmall,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 58,
                        width: 58,
                        child: Card(
                            shape: const CircleBorder(),
                            elevation: 3,
                            color: isDarkMode
                                ? MainPalette.tertiary
                                : MainPalette.secondary,
                            child: Center(
                              child: Image.network(
                                  height: 40,
                                  width: 40,
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzpAnbM-vLe9TlUFyJBJrtPltEUPPXyQ0zlg&s"),
                              // child: Icon(
                              //   HugeIcons.strokeRoundedDress03,
                              //   color: isDarkMode
                              //       ? ButtonDark.active
                              //       : ButtonLight.active,
                              // ),
                            )),
                      ),
                      // Container(
                      //     height: 58,
                      //     width: 58,
                      //     decoration: const BoxDecoration(
                      //       shape: BoxShape.circle,
                      //       color: MainPalette.secondary,
                      //     ),
                      //     child: Center(
                      //       child: Icon(
                      //         HugeIcons.strokeRoundedDress03,
                      //         color: isDarkMode
                      //             ? ButtonDark.active
                      //             : ButtonLight.active,
                      //       ),
                      //     )),
                      Text("T-Shirt",
                          style: Theme.of(context).textTheme.bodySmall)
                    ],
                  ),
                )));
  }
}
