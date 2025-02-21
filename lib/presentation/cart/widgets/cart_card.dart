import 'package:fashion/config/index/index.dart';

class CartCard extends StatelessWidget {
  final String productName, size, price, color, cartImageUrl;
  const CartCard({
    super.key,
    required this.productName,
    required this.size,
    required this.price,
    required this.color,
    required this.cartImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Stack(
        fit: StackFit.loose,
        children: [
          CartCardDetails(
            productName: productName,
            color: color,
            size: size,
            price: price,
          ),
          const CartProductCounter(),
          const RemoveCartItem(),
          CartImageCard(
            cartImageUrl: cartImageUrl,
          ),
        ],
      ),
    );
  }
}
