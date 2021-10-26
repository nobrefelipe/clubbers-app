import 'package:flutter/material.dart';

import 'color_pallete.dart';

class SUIShadows {
  ///
  /// DEFAULT SHADOW
  ///
  static BoxShadow defaultShadow = BoxShadow(
    color: CLPalette.primary.withOpacity(0.38),
    blurRadius: 15,
  );

  ///
  /// ACTIVE SHADOW
  ///
  static BoxShadow activeShadow = BoxShadow(
    color: CLPalette.primary.withOpacity(0.5),
    blurRadius: 16,
  );
}
