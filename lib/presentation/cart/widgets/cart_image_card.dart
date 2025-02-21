import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class CartImageCard extends StatelessWidget {
  final String cartImageUrl;
  const CartImageCard({
    super.key,
    required this.cartImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 10,
        top: 4,
        bottom: 4,
        child: Card(
          shadowColor: MainPalette.primary,
          elevation: 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
                height: 120, width: 120, fit: BoxFit.cover, cartImageUrl),
          ),
        ));
  }
}
