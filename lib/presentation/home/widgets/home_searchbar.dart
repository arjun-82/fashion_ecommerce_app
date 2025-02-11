import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      padding: PaddingChart.horizontalSmall,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: AppSearchBar(
            onTap: () {},
          )),
          Spacing.smallWidth,
          IconButton.filled(
              onPressed: () {
                // showMyBottomSheet(
                //   context,
                //   child: Text("hello")
                // );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    isDarkMode ? TDark.primary : TLight.primary),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(ButtonSize.fixedRadius),
                  ),
                ),
              ),
              icon: Icon(
                HugeIcons.strokeRoundedDashboardSquare03,
                color: isDarkMode ? TLight.primary : TDark.primary,
              )),
        ],
      ),
    );
  }
}
