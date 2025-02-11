import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class PosterCard extends StatelessWidget {
  final String? imageUrl;
  const PosterCard({
    super.key,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      padding: PaddingChart.allSmall,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
            imageUrl ??
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx3AZjdEWl7M4-tTToEyJljxaRBnba6vV3mA&s',
            fit: BoxFit.cover),
      ),
    );
  }
}
