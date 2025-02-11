import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

List<String> images = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx3AZjdEWl7M4-tTToEyJljxaRBnba6vV3mA&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyx995Jsx3upD_PRPOf95BbPVZVtnRJsa4fg&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAC0lKQL3odY8fDxyJ4aqcBNXpXtU8DbILXQ&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3ggINRhedOVR1ABXkcsC--ECABzSuIkJ-CA&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9l9NPWPMp7HzEel8lqfYCdFOjBOWSpUkkYQ&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDMQdTa1gtIhFTLtlxrqbCPV-Q2CSIne36Dw&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9yNsPPf0PrxbRN7wXRmNrIUVyjpkhVIZNjQ&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2_1UfeAOaOfwRhv9A9iAij_s9ZBEpnjfh6g&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-_8_uC5C25vhmCN0KKTUrn6SS-Se0d1vsxg&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwlvkPPTMLziAb0mkCktRo6ctIQQfVg_fr2A&s',
];

class RandomProductCard extends StatelessWidget {
  const RandomProductCard({
    super.key,
    required this.imageUrl,
    this.title,
    this.brand,
    this.discountPrice,
    this.discountPercentage,
  });

  final String imageUrl;
  final String? title;
  final String? brand;
  final String? discountPrice;
  final String? discountPercentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Get.to(
                duration: const Duration(milliseconds: 900),
                transition: Transition.downToUp,
                () => const ProductDetailsScreen());
          },
          child: Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    title ?? "Product title",
                    style: Theme.of(context).textTheme.bodyLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    brand ?? "Brand",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Wrap(
                    spacing: 10,
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
                        style: const TextStyle(
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
          ),
        ),
        const Positioned(bottom: 8, right: 8, child: AddCartButton()),
      ],
    );
  }
}
