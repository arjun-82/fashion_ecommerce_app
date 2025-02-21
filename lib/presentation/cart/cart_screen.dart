import 'package:flutter/material.dart';
import 'package:fashion/config/index/index.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBarHeader(
        isleading: false,
        centerTitle: true,
        title: const Text("Cart"),
        actions: [CustomIconButton(
          onPressed: (){
             Get.to(
                        duration: const Duration(milliseconds: 900),
                        transition: Transition.downToUp,
                        const LikedScreen());
          },
          icon: HugeIcons.strokeRoundedFavourite)],
        child: const HeadLogo(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CustomGridViewBuilder(
                height: 120,
                axisCount: 1,
                itemBuilder: (context, index) => const CartCard(
                      cartImageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwlvkPPTMLziAb0mkCktRo6ctIQQfVg_fr2A&s",
                      color: "black",
                      size: "L",
                      price: "1999",
                      productName: "Suite and Pants",
                    ),
                itemCount: 10),
          ],
        ),
      ),
    );
  }
}
