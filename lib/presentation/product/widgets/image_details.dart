import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String imageUrl;
  const ProductImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 380,
          width: MediaQuery.of(context).size.width,
          child: Material(
            elevation: 2,
            // borderRadius: const BorderRadius.only(
            //     bottomLeft: Radius.circular(10),
            //     bottomRight: Radius.circular(10)),
            child: Image.network(
              fit: BoxFit.cover,
              imageUrl,
            ),
          ),
        ),
        const Positioned(top: 30, right: 20, child: FavButton()),
        Positioned(
            top: 30,
            left: 20,
            child: CustomIconButton(
              onPressed: () {
                Get.back();
              },
              icon: HugeIcons.strokeRoundedArrowLeft01,
            ))
      ],
    );
  }
}
