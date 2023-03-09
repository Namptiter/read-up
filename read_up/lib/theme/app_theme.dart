import 'package:flutter/material.dart';

class DAppTheme {
  // Light theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Quicksand',
    useMaterial3: true,
    colorSchemeSeed: const Color(0xFFF55050),
  );

  // Dark theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Quicksand',
    useMaterial3: true,
    colorSchemeSeed: const Color(0xFFF55050),
  );
}
