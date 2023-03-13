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
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.transparent,
        ),
      ),
      scaffoldBackgroundColor: CustomColors.lmScaffoldBackgroundColor,
      backgroundColor: CustomColors.lmBackgroundColor,
      textTheme: lightTheme.textTheme.copyWith(
        titleLarge: largeTitle32Bold.copyWith(
          color: Colors.black,
        ),
        titleMedium: titleMedium24Bold.copyWith(
          color: Colors.black,
        ),
        bodyLarge: bodyLarge14Bold.copyWith(color: Colors.black),
      ),
      bottomNavigationBarTheme: lightTheme.bottomNavigationBarTheme.copyWith(
        selectedItemColor: Colors.black,
      ),
    );
  }

  static ThemeData getDarkTheme() {
    return darkTheme.copyWith(
      appBarTheme: darkTheme.appBarTheme.copyWith(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
        ),
      ),
      scaffoldBackgroundColor: CustomColors.dmScaffoldBackgroundColor,
      backgroundColor: CustomColors.dmBackgroundColor,
      textTheme: darkTheme.textTheme.copyWith(
        titleLarge: largeTitle32Bold.copyWith(
          color: Colors.white,
        ),
        titleSmall: titleMedium24Bold.copyWith(
          color: Colors.white,
        ),
        bodyLarge: bodyLarge14Bold.copyWith(
          color: Colors.white,
        ),
      ),
      bottomNavigationBarTheme: darkTheme.bottomNavigationBarTheme.copyWith(
        selectedItemColor: Colors.white,
      ),
    );
  }
}
