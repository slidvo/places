import 'package:flutter/material.dart';

class VisitingTabBar extends StatelessWidget {
  final String title;
  final bool isActive;

  const VisitingTabBar({Key? key, required this.title, required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: "Roboto",
        fontStyle: FontStyle.normal,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        height: 1,
        color:
            isActive ? Colors.white : const Color.fromRGBO(124, 126, 146, 0.56),
      ),
    );
  }
}