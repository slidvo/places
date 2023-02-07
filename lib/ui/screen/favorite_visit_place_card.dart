import 'package:flutter/material.dart';
import 'package:places/domain/favorite_visit_place.dart';
import 'package:intl/intl.dart';

///Карточка избранного, где отображается информация о месте
///которое пользователь хочет поситить
class FavoriteVisitPlaceCard extends StatefulWidget {
  final FavoriteVisitPlace favoriteVisitPlace;

  const FavoriteVisitPlaceCard({
    Key? key,
    required this.favoriteVisitPlace,
  }) : super(key: key);

  @override
  State<FavoriteVisitPlaceCard> createState() => _FavoriteVisitPlaceCardState();
}

class _FavoriteVisitPlaceCardState extends State<FavoriteVisitPlaceCard> {
  final DateFormat dateFormat = DateFormat("d MMM y");

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      margin: const EdgeInsets.fromLTRB(15, 30, 15, 15),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(245, 245, 245, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                //Фон
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  child: Image.network(
                    widget.favoriteVisitPlace.sight.url,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                //Тип интересного места
                Positioned(
                  left: 16,
                  top: 16,
                  child: Text(
                    widget.favoriteVisitPlace.sight.type,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        height: 1.29),
                  ),
                ),
                //Иконка справа
                Positioned(
                  top: 16,
                  right: 16,
                  child: Row(
                    children: [
                      widget.favoriteVisitPlace.isGoalAchieved
                          ? Image.asset("res/image/share_icon.png")
                          : Image.asset("res/image/calendar.png"),
                      const Divider(indent: 23),
                      Image.asset("res/image/icon_close.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.all(16),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.favoriteVisitPlace.sight.name,
                    style: const TextStyle(
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  !widget.favoriteVisitPlace.isGoalAchieved
                      ? Text(
                          "Запланировано на ${dateFormat.format(widget.favoriteVisitPlace.planedDate)}",
                          style: const TextStyle(
                            fontFamily: "Roboto",
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromRGBO(76, 175, 80, 1),
                          ),
                        )
                      : Text(
                          "Цель достигнута ${dateFormat.format(widget.favoriteVisitPlace.planedDate)}",
                          style: const TextStyle(
                            fontFamily: "Roboto",
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromRGBO(124, 126, 146, 1),
                          ),
                        ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "закрыто до "
                    "${DateFormat("jm").format(widget.favoriteVisitPlace.openingTime)} "
                    "${widget.favoriteVisitPlace.openingTime.timeZoneName}",
                    style: const TextStyle(
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromRGBO(124, 126, 146, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
