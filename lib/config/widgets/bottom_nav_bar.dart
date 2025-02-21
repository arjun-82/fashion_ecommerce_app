import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class FashionBottomNavBar extends StatelessWidget {
  const FashionBottomNavBar({super.key});

  // List of pages corresponding to each tab
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final BottomNavigationController controller =
        Get.put(BottomNavigationController());
    return Scaffold(
      body: controller._screens[
          controller.currentIndex.value], // Directly show the selected screen
      bottomNavigationBar: Padding(
        padding: PaddingChart.allSmall,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: isDarkMode ? MainPalette.tertiary : MainPalette.secondary,
            borderRadius: BorderRadius.circular(
                ButtonSize.fixedRadius), // Match with Material
          ),
          child: GNav(
              curve: Curves.easeOutExpo,
              duration: const Duration(milliseconds: 700),
              gap: 8,
              color: isDarkMode ? TDark.label : TLight.label,
              activeColor:
                  isDarkMode ? MainPalette.secondary : MainPalette.tertiary,
              iconSize: 24,
              tabBorderRadius: 100,
              style: GnavStyle.oldSchool,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              // backgroundColor:  isDarkMode ? MainPalette.tertiary :MainPalette.secondary,
              textStyle: TextStyle(
                color: isDarkMode ? Background.dark : Background.light,
                fontSize: 10,
              ),
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              tabs: const [
                GButton(
                  icon: HugeIcons.strokeRoundedHome02,
                  text: 'Home',
                ),
                GButton(
                  icon: HugeIcons.strokeRoundedSearch02,
                  text: 'Explore',
                ),
                GButton(
                  icon: HugeIcons.strokeRoundedShoppingBag03,
                  text: 'Bag',
                ),
                GButton(
                  icon: HugeIcons.strokeRoundedFavourite,
                  text: 'F-Like',
                ),
              ],
              selectedIndex: controller.currentIndex.value,
              onTabChange: controller.changeIndex),
        ),
      ),
    );
  }
}

class BottomNavigationController extends GetxController {
  final RxInt currentIndex = 0.obs;
  final List<Widget> _screens = const [
    HomeScreen(),
    HomeScreen(),
    CartScreen(),
    HomeScreen(),
  ];
  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
