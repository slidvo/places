import 'package:flutter/material.dart';
import 'package:places/ui/screens/res/custom_colors.dart';
import 'package:places/ui/screens/res/custom_text_styles.dart';

/// Кастомные темы прложения
class CustomTheme {
  static var defaultLightTheme = ThemeData.light();
  static var defaultDarkTheme = ThemeData.dark();

  static ThemeData getLightTheme() {
    return defaultLightTheme.copyWith(
      appBarTheme: defaultLightTheme.appBarTheme
          .copyWith(color: CustomColors.lmSightCardBackgroundColor),
      scaffoldBackgroundColor: CustomColors.lmBackgroundColor,
      backgroundColor: Colors.white,
      textTheme: defaultLightTheme.textTheme.copyWith(
        titleLarge: largeTitle32Bold.copyWith(color: Colors.black),
      ),
    );
  }

  static ThemeData getDarkTheme() {
    return defaultDarkTheme.copyWith(
        appBarTheme: defaultDarkTheme.appBarTheme
            .copyWith(color: CustomColors.dmBackgroundColor),
        scaffoldBackgroundColor: CustomColors.dmBackgroundColor,
        backgroundColor: CustomColors.dmSightCardBackgroundColor,
        textTheme: defaultDarkTheme.textTheme.copyWith(
          titleLarge: largeTitle32Bold.copyWith(color: Colors.white),
        ));
  }
}
