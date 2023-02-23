import 'package:flutter/material.dart';

/// Кастомные темы прложения
class CustomTheme {
  static ThemeData getLightTheme() {
    final ThemeData defaultLightTheme = ThemeData.light();
    return defaultLightTheme;
  }

  static ThemeData getDarkTheme() {
    final ThemeData defaultDarkTheme = ThemeData.dark();
    return defaultDarkTheme.copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color.fromRGBO(46, 46, 46, 1)
    );
  }
}
