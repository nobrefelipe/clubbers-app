import 'package:clubber/clubber.dart';
import 'package:flutter/material.dart';

import 'ui_kit_tests/ui_kit_tests.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: CLPalette.primary,
        fontFamily: CLFonts.pulpDisplay,
        appBarTheme: AppBarTheme(
          backgroundColor: CLPalette.primary,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const UiKitTests(),
    );
  }
}
