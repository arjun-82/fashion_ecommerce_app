
import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class PriceOfferLabel extends StatelessWidget {
  final String offerPrice, originalPrice, discount;
  const PriceOfferLabel({
    super.key, required this.offerPrice, required this.originalPrice, required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.end,
      spacing: 12,
      children: [
        Text(
          "₹ $offerPrice",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          "₹ $originalPrice",
          style: TextStyle(
            color: Theme.of(context).textTheme.labelMedium!.color,
            fontSize: TextSize.px20,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.lineThrough,
            decorationColor: Theme.of(context).textTheme.labelLarge!.color,
          ),
        ),
        Text(
          "$discount % Off",
          style: TextStyle(
            color: Colors.green[700],
            fontSize: TextSize.px16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
