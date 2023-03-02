import 'package:flutter/material.dart';

/// Класс в котором хранятся все катосмные цвета, которые используются в приложении
class CustomColors {
  /// Набор цветов для светлой темы
  static var lmScaffoldBackgroundColor = Colors.white;
  static var lmBackgroundColor = const Color.fromRGBO(245, 245, 245, 1);

  /// Набор цветов для тёмной темы
  static var dmScaffoldBackgroundColor = const Color(0xFF2E2E2E);
  static var dmBackgroundColor = const Color.fromRGBO(26, 26, 32, 1);
}
