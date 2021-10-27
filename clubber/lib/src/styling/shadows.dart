import 'package:flutter/material.dart';

import 'color_pallete.dart';

class CLShadows {
  ///
  /// DEFAULT SHADOW
  ///
  static BoxShadow defaultShadow = BoxShadow(
    color: CLPalette.darkGrey.withOpacity(0.35),
    blurRadius: 15,
  );

  ///
  /// COLORED SHADOW
  ///
  static BoxShadow coloredShadow = BoxShadow(
    color: CLPalette.primary.withOpacity(0.38),
    blurRadius: 12,
  );

  ///
  /// ACTIVE SHADOW
  ///
  static BoxShadow activeShadow = BoxShadow(
    color: CLPalette.primary.withOpacity(0.5),
    blurRadius: 16,
  );
}
