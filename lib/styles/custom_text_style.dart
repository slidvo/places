import 'package:flutter/material.dart';

Text mainTextStyle(String title) {
  return Text(
    title,
    style: const TextStyle(
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      height: 1,
    ),
  );
}

Text customTextStyle(
    String title, FontWeight fontWeight, double fontSize, double height) {
  return Text(
    title,
    style: TextStyle(
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
    ),
  );
}

Text activeVisitingTabBar(
    String title, FontWeight fontWeight, double fontSize, double height) {
  return Text(
    title,
    style: TextStyle(
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      color: Colors.white,
    ),
  );
}

Text inActiveVisitingTabBar(
    String title, FontWeight fontWeight, double fontSize, double height) {
  return Text(
    title,
    style: TextStyle(
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      color: const Color.fromRGBO(124, 126, 146, 0.56),
    ),
  );
}
