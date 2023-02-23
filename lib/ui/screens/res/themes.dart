import 'package:flutter/material.dart';
import 'package:places/ui/screens/res/custom_colors.dart';

/// Кастомные темы прложения
class CustomTheme {
  static ThemeData getLightTheme() {
    final ThemeData defaultLightTheme = ThemeData.light();
    return defaultLightTheme.copyWith(
      appBarTheme: defaultLightTheme.appBarTheme
          .copyWith(color: CustomColors.lmSightCardBackgroundColor),
      brightness: Brightness.light,
      scaffoldBackgroundColor: CustomColors.lmBackgroundColor,
      textTheme: defaultLightTheme.textTheme.copyWith(
        headline5: defaultLightTheme.textTheme.headline5
            ?.copyWith(fontSize: 24, fontFamily: "Roboto"),
      ),
    );
  }

  static ThemeData getDarkTheme() {
    final ThemeData defaultDarkTheme = ThemeData.dark();
    return defaultDarkTheme.copyWith(
      appBarTheme: defaultDarkTheme.appBarTheme
          .copyWith(color: CustomColors.dmBackgroundColor),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: CustomColors.dmBackgroundColor,
      textTheme: defaultDarkTheme.textTheme.copyWith(
        headline5: defaultDarkTheme.textTheme.headline5
            ?.copyWith(fontSize: 24, fontFamily: "Roboto"),
      ),
    );
  }
}
