import 'package:flutter/material.dart';

Column favoriteVisitPlaceEmptyScreen() {
  const String path = "res/image/emptyTabScreen";
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        width: 60,
        height: 59,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(top: 0, child: Image.asset("$path/003.png")),
            Positioned(top: 10, child: Image.asset("$path/001.png")),
            Positioned(top: 25, child: Image.asset("$path/002.png")),
          ],
        ),
      ),
      const SizedBox(
        height: 32,
      ),
      const Text(
        "Пусто",
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontSize: 18,
          color: Color.fromRGBO(124, 126, 146, 0.56),
        ),
      ),
      RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: "Отмечайте понравившиеся\n",
          style: TextStyle(
            fontFamily: "Roboto",
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: 14,
            color: Color.fromRGBO(124, 126, 146, 0.56),
          ),
          children: [
            TextSpan(text: "понравившиеся места и они появятся сдесь")
          ],
        ),
      ),
    ],
  );
}