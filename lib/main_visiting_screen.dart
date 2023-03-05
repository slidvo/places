import 'package:flutter/material.dart';
import 'package:places/ui/screens/visiting_screen.dart';

class VisitingScreenApp extends StatelessWidget {
  const VisitingScreenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const VisitingScreen();
  }
}

void main() {
  runApp(const VisitingScreenApp());
}
