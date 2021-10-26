import 'package:flutter/material.dart';
import 'package:flutter_ui_toolkit/flutter_ui_toolkit.dart';

import 'color_pallete.dart';
import 'fonts.dart';

class CLText {
  ///
  /// HEADING
  ///
  static Widget heading(
    String text, {
    required int heading,
    Color? color,
  }) {
    return UIHeading(
      as: _headingStyles,
      heading: heading,
      text: text,
      color: color ?? Colors.white,
    );
  }

  ///
  /// TEXT CONTENT
  ///
  static Widget content(
    String text, {
    Color? color,
  }) {
    return UIHeading(
      as: _contentStyles,
      text: text,
      color: color ?? CLPalette.lightGrey,
    );
  }
}

///
/// HEADING STYLES
///
final _headingStyles = UIHeadingDefaults(
  color: CLPalette.lightGrey,
  fontWeight: FontWeight.w700,
  fontFamily: CLFonts.pulpDisplay,
);

///
/// TEXT CONTENT STYLES
///
final _contentStyles = UIHeadingDefaults(
  color: CLPalette.lightGrey,
  fontWeight: FontWeight.w300,
  heading: 6,
  fontFamily: CLFonts.pulpDisplay,
);
