import 'package:flutter/material.dart';
import 'package:places/styles/custom_text_style.dart';

Container materialVisitingScreenTitle() {
  return Container(
    padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
    alignment: Alignment.center,
    child: mainTextStyle(
      "Избранное",
    ),
  );
}
