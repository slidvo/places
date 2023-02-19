import 'package:flutter/material.dart';
import 'package:places/ui/screens/res/custom_colors.dart';

/// Кастомные темы прложения
class CustomTheme {
  static ThemeData getLightTheme() {
    final ThemeData defaultLightTheme = ThemeData.light();
    return defaultLightTheme.copyWith(
      brightness: Brightness.light,
      colorScheme: defaultLightTheme.colorScheme
          .copyWith(background: backgroundColorsMap["light"]),
    );
  }
}
