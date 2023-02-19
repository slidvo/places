import 'package:flutter/material.dart';
import 'package:places/ui/screens/res/themes.dart';
import 'package:places/ui/screens/sight_list_screen.dart';

final ThemeData _lightTheme = CustomTheme.getLightTheme();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _lightTheme,
      home: const SightListScreen(),
    );
  }
}
