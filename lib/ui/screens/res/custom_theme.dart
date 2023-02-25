import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:places/ui/screens/res/custom_colors.dart';
import 'package:places/ui/screens/res/custom_text_styles.dart';

/// Кастомные темы прложения
class CustomTheme {
  static var lightTheme = ThemeData.light();
  static var darkTheme = ThemeData.dark();

  static ThemeData getLightTheme() {
    return lightTheme.copyWith(
      appBarTheme: lightTheme.appBarTheme.copyWith(
        color: CustomColors.lmSightCardBackgroundColor,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark),
      ),
      scaffoldBackgroundColor: CustomColors.lmBackgroundColor,
      backgroundColor: Colors.white,
      textTheme: lightTheme.textTheme.copyWith(
        titleLarge: largeTitle32Bold.copyWith(color: Colors.black),
      ),
    );
  }

  static ThemeData getDarkTheme() {
    return darkTheme.copyWith(
      appBarTheme: darkTheme.appBarTheme.copyWith(
        color: CustomColors.dmBackgroundColor,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      scaffoldBackgroundColor: CustomColors.dmBackgroundColor,
      backgroundColor: CustomColors.dmSightCardBackgroundColor,
      textTheme: darkTheme.textTheme.copyWith(
        titleLarge: largeTitle32Bold.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
