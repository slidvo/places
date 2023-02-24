import 'package:flutter/material.dart';
import 'package:places/ui/screens/res/custom_colors.dart';

/// Кастомные темы прложения
class CustomTheme {
  static var defaultLightTheme = ThemeData.light();
  static var defaultDarkTheme = ThemeData.dark();
  static var lmTitleLargeStyle =
      defaultLightTheme.textTheme.titleLarge?.copyWith(
    fontSize: 32,
    fontFamily: "Roboto",
    color: Colors.black,
  );
  static var dmTitleLargeStyle =
      defaultDarkTheme.textTheme.titleLarge?.copyWith(
    fontSize: 32,
    fontFamily: "Roboto",
    color: Colors.white,
  );

  static ThemeData getLightTheme() {
    return defaultLightTheme.copyWith(
      primaryColor: Colors.white,
      appBarTheme: defaultLightTheme.appBarTheme
          .copyWith(color: CustomColors.lmSightCardBackgroundColor),
      scaffoldBackgroundColor: CustomColors.lmBackgroundColor,
      backgroundColor: Colors.white,
      textTheme: defaultLightTheme.textTheme.copyWith(
        titleLarge: lmTitleLargeStyle,
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
        titleLarge: dmTitleLargeStyle,
      )
    );
  }
}
