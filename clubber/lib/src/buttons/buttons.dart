import 'package:flutter/material.dart';
import 'package:flutter_ui_toolkit/flutter_ui_toolkit.dart';

import '../../clubber.dart';

class CLButton {
  ///
  /// SHIFT UI SOLID BUTTON
  ///
  static Widget solid({
    required String label,
    required Function onPressed,
    double? widthFactor,
    IconData? icon,
    Widget? suffix,
    Color? color,
    Color? shadowColor,
  }) {
    ///
    /// Suffix
    ///
    Widget _suffix() {
      Widget i;
      if (icon != null) {
        i = Icon(
          icon,
          color: Colors.white,
          size: 20,
        );
      } else if (suffix != null) {
        i = suffix;
      } else {
        i = SizedBox.shrink();
      }

      return i;
    }

    return UIButton.solid(
      as: solidButton,
      label: label,
      onPressed: onPressed,
      widthFactor: widthFactor,
      bgColor: color,
      icon: _suffix(),
      shadowColor: shadowColor,
    );
  }

  ///
  /// SHIFT UI OUTLINED BUTTON
  ///
  static Widget outlined({
    required String label,
    required Function onPressed,
    double? widthFactor,
    IconData? icon,
    Widget? suffix,
    Color? color,
  }) {
    ///
    /// Suffix
    ///
    Widget _suffix() {
      Widget i;
      if (icon != null) {
        i = Icon(
          icon,
          color: Colors.white,
          size: 20,
        );
      } else if (suffix != null) {
        i = suffix;
      } else {
        i = SizedBox.shrink();
      }

      return i;
    }

    return UIButton.outlined(
      as: outlinedButton,
      label: label,
      onPressed: onPressed,
      widthFactor: widthFactor,
      bgColor: color,
      icon: _suffix(),
    );
  }

  static Widget text({
    required String label,
    required Function onPressed,
    double? widthFactor,
    Color? color,
  }) {
    return UIButton.solid(
      as: textButton,
      label: label,
      onPressed: onPressed,
      widthFactor: widthFactor,
      labelColor: color,
      elevation: 0.0,
    );
  }
}

///
/// SOLID BUTTON STYLES
///
final solidButton = UIButtonDefaults(
  bgColor: CLPalette.primary,
  labelColor: Colors.white,
  borderRadius: 40,
  elevation: 10,
  padding: CLSpacing.defaultSpacing,
);

///
/// OUTLINED BUTTON STYLES
///
final outlinedButton = UIButtonDefaults(
  bgColor: Colors.transparent,
  labelColor: CLPalette.darkGrey,
  borderRadius: 40,
  borderColor: CLPalette.darkGrey,
  padding: CLSpacing.defaultSpacing,
);

///
/// TEXT BUTTON STYLES
///
final textButton = UIButtonDefaults(
  bgColor: Colors.transparent,
  labelColor: CLPalette.primary,
  borderRadius: 40,
  padding: CLSpacing.verticalSpacing16,
);
