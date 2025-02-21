import 'package:flutter/material.dart';

class CartCardDetails extends StatelessWidget {
  final String productName, size, price, color;
  const CartCardDetails({
    super.key,
    required this.productName,
    required this.size,
    required this.price,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 150,
      top: 20,
      bottom: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(productName),
          Text(
            "₹ $price",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Row(
            children: [
              Text(
                "Size : $size",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                "  |  ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                "Color : $color",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          )
        ],
      ),
    );
  }
}
