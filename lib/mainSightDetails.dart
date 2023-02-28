import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screens/sight_details.dart';

class AppSightDetails extends StatelessWidget {
  const AppSightDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SightDetails(sight: mocks[0]);
  }
}

void main() {
  runApp(const AppSightDetails());
}
