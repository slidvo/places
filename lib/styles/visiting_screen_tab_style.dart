import 'package:flutter/material.dart';
import 'package:places/styles/custom_text_style.dart';

Expanded newTab(String text, Color color, bool isActive) {
  return Expanded(
    child: Container(
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(40))
      ),
      child: isActive 
          ? activeVisitingTabBar(text, FontWeight.w700, 14, 1)
          : inActiveVisitingTabBar(text, FontWeight.w700, 14, 1)
    ),
  );
}
