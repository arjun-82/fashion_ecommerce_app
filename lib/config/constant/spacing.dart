import 'package:flutter/material.dart';

class Spacing {
  static const double xsmall = 4.0;
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 24.0;
  static const double xlarge = 32.0;
  
  static const SizedBox largeHeight = SizedBox(
    height: xlarge,
  );
  static const SizedBox mediumHeight = SizedBox(
    height: large,
  );
  static const SizedBox normalHeight = SizedBox(
    height: medium,
  );
  static const SizedBox smallHeight = SizedBox(
    height: small,
  );

  static const SizedBox largeWidth = SizedBox(
    width: xlarge,
  );
  static const SizedBox mediumWidth = SizedBox(
    width: large,
  );
  static const SizedBox normalWidth = SizedBox(
    width: medium,
  );
  static const SizedBox smallWidth = SizedBox(
    width: small,
  );
}
