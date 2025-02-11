import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class VerticalProductCard extends StatelessWidget {
  final String? imageUrl, title, brand, discountPercentage, discountPrice;
  const VerticalProductCard({
    super.key,
    this.imageUrl,
    this.title,
    this.brand,
    this.discountPercentage,
    this.discountPrice,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
            duration: const Duration(milliseconds: 900),
            transition: Transition.downToUp,
            () => const ProductDetailsScreen());
      },
      child: Card(
        elevation: 2,
        child: Stack(
          children: [
            const Positioned(bottom: 5, right: 5, child: AddCartButton()),
            Padding(
              padding: PaddingChart.allXSmall,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.network(
                        height: 180,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                        imageUrl ??
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzpAnbM-vLe9TlUFyJBJrtPltEUPPXyQ0zlg&s"),
                  ),
                  const Spacer(),
                  Text(
                    title ?? "Product Card",
                    style: Theme.of(context).textTheme.bodyLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    brand ?? "Brand",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Wrap(
                    spacing: 10,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                         "₹ $discountPrice",
                        style: const TextStyle(
                            fontSize: TextSize.px16,
                            fontWeight: FontWeight.bold,
                            fontFamily: Font.primaryFont),
                      ),
                      Text(
                        "$discountPercentage %off",
                        style:const TextStyle(
                          color: Colors.green,
                          fontSize: TextSize.px14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Positioned(top: 8, right: 8, child: FavButton())
          ],
        ),
      ),
    );
  }
}
