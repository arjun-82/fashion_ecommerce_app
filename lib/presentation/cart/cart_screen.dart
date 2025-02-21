import 'package:flutter/material.dart';
import 'package:fashion/config/index/index.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text("cart Screen"))
          ],
        ),
      ),
    );
  }
}
