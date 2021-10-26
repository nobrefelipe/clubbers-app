import 'package:flutter/material.dart';

class CLSpacing {
  ///
  /// SET VALUES
  ///
  static const s8 = 8.0;
  static const s16 = 16.0;
  static const s24 = 24.0;
  static const s34 = 34.0;
  static const s52 = 52.0;

  ///
  /// DEFAULT SPACING
  ///
  static const EdgeInsets defaultSpacing = EdgeInsets.symmetric(
    vertical: s16,
    horizontal: s24,
  );

  ///
  /// HORIZONTAL SPACING
  ///
  static const EdgeInsets horizintalSpacing8 = EdgeInsets.symmetric(horizontal: s8);
  static const EdgeInsets horizintalSpacing16 = EdgeInsets.symmetric(horizontal: s16);
  static const EdgeInsets horizintalSpacing24 = EdgeInsets.symmetric(horizontal: s24);
  static const EdgeInsets horizintalSpacing34 = EdgeInsets.symmetric(horizontal: s34);
  static const EdgeInsets horizintalSpacing52 = EdgeInsets.symmetric(horizontal: s52);

  ///
  /// VERTICAL SPACING
  ///
  static const EdgeInsets verticalSpacing8 = EdgeInsets.symmetric(vertical: s8);
  static const EdgeInsets verticalSpacing16 = EdgeInsets.symmetric(vertical: s16);
  static const EdgeInsets verticalSpacing24 = EdgeInsets.symmetric(vertical: s24);
  static const EdgeInsets verticalSpacing34 = EdgeInsets.symmetric(vertical: s34);

  ///
  /// HORIZONTAL & VERTICAL SPACING
  ///
  static const EdgeInsets spacing8 = EdgeInsets.all(s8);
  static const EdgeInsets spacing16 = EdgeInsets.all(s16);
  static const EdgeInsets spacing24 = EdgeInsets.all(s24);
  static const EdgeInsets spacing34 = EdgeInsets.all(s34);
}
