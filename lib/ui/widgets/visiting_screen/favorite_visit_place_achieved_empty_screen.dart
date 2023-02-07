import 'package:flutter/material.dart';

class FavoriteVisitPlaceAchievedEmptyScreen extends StatelessWidget {
  const FavoriteVisitPlaceAchievedEmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("res/image/go_icon.png"),
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
            text: "Завершите маршрут  \n",
            style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontSize: 14,
              color: Color.fromRGBO(124, 126, 146, 0.56),
            ),
            children: [
              TextSpan(text: "чтобы место попало сюда")
            ],
          ),
        ),
      ],
    );
  }
}