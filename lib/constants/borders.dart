import 'package:flutter/material.dart';

class AppBorders {
  static const double radiusSmall = 4.0;
  static const double radiusMedium = 8.0;
  static const double radiusLarge = 16.0;

  static const BorderRadius smallBorderRadius = BorderRadius.all(
    Radius.circular(radiusSmall),
  );

  static const BorderRadius mediumBorderRadius = BorderRadius.all(
    Radius.circular(radiusMedium),
  );

  static const BorderRadius largeBorderRadius = BorderRadius.all(
    Radius.circular(radiusLarge),
  );

  static const BorderRadius topRounded = BorderRadius.only(
    topLeft: Radius.circular(radiusMedium),
    topRight: Radius.circular(radiusMedium),
  );
}