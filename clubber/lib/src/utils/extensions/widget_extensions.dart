import 'package:clubber/clubber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension WidgetExtensions on Widget {
  Widget onTap(Function f) => CupertinoButton(
        pressedOpacity: 0.85,
        padding: const EdgeInsets.all(0),
        onPressed: () => f(),
        child: this,
      );

  Widget borderRadius(double radius) => ClipRRect(
        borderRadius: CLBorderRadius.borderRadius(radius),
        child: this,
      );

  Widget marginAll(double margin) => Container(margin: EdgeInsets.all(margin), child: this);

  Widget marginSymmetric({double horizontal = 0.0, double vertical = 0.0}) =>
      Container(margin: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical), child: this);

  Widget marginOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) =>
      Container(margin: EdgeInsets.only(top: top, left: left, right: right, bottom: bottom), child: this);
}
