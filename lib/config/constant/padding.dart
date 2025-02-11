import 'package:flutter/material.dart';

class PaddingChart {
  // Standard spacing values
  static const double xsmall = 4.0;
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 24.0;
  static const double xlarge = 32.0;

  // EdgeInsets for common use cases
  static const EdgeInsets allXSmall = EdgeInsets.all(xsmall);
  static const EdgeInsets allSmall = EdgeInsets.all(small);
  static const EdgeInsets allMedium = EdgeInsets.all(medium);
  static const EdgeInsets allLarge = EdgeInsets.all(large);
  static const EdgeInsets allXLarge = EdgeInsets.all(xlarge);

  static const EdgeInsets horizontalSmall =
      EdgeInsets.symmetric(horizontal: small);
  static const EdgeInsets horizontalMedium =
      EdgeInsets.symmetric(horizontal: medium);
  static const EdgeInsets verticalSmall = EdgeInsets.symmetric(vertical: small);
  static const EdgeInsets verticalMedium =
      EdgeInsets.symmetric(vertical: medium);

  // Custom combinations
  static EdgeInsets custom(
      double top, double bottom, double left, double right) {
    return EdgeInsets.fromLTRB(left, top, right, bottom);
  }
}
