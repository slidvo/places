import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screens/sight_details_screen.dart';

class AppSightDetails extends StatelessWidget {
  const AppSightDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SightDetailsScreen(sight: mocks[0]);
  }
}

void main() {
  runApp(const AppSightDetails());
}
