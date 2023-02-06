import 'package:flutter/material.dart';
import 'package:places/domain/favorite_visit_place.dart';
import 'package:places/ui/screen/favorite_visit_place_card.dart';

import 'favorite_visit_place_achieved_empty_screen.dart';
import 'favorite_visit_place_empty_screen.dart';

class VisitingScreenTabBarView extends StatefulWidget {
  final TabController tabController;
  final List<FavoriteVisitPlace> favoriteVisitPlaces;

  const VisitingScreenTabBarView(
      {Key? key,
      required this.tabController,
      required this.favoriteVisitPlaces})
      : super(key: key);

  @override
  State<VisitingScreenTabBarView> createState() =>
      _VisitingScreenTabBarViewState();
}

class _VisitingScreenTabBarViewState extends State<VisitingScreenTabBarView> {
  late List<FavoriteVisitPlace> favoriteVisitPlacesNotAchieved = widget
      .favoriteVisitPlaces
      .where((element) => !element.isGoalAchieved)
      .toList();

  late List<FavoriteVisitPlace> favoriteVisitPlacesAchieved = widget
      .favoriteVisitPlaces
      .where((element) => element.isGoalAchieved)
      .toList();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: widget.tabController,
        children: [
          favoriteVisitPlacesNotAchieved.isEmpty
              ? const FavoriteVisitPlaceNotAchievedEmptyScreen()
              : ListView.builder(
                  itemCount: favoriteVisitPlacesNotAchieved.length,
                  itemBuilder: (context, index) {
                    return FavoriteVisitPlaceCard(
                        favoriteVisitPlace:
                            favoriteVisitPlacesNotAchieved[index]);
                  },
                ),
          favoriteVisitPlacesAchieved.isEmpty
              ? const FavoriteVisitPlaceAchievedEmptyScreen()
              : ListView.builder(
                  itemCount: favoriteVisitPlacesAchieved.length,
                  itemBuilder: (context, index) => FavoriteVisitPlaceCard(
                      favoriteVisitPlace: favoriteVisitPlacesAchieved[index]))
        ],
      ),
    );
  }
}
