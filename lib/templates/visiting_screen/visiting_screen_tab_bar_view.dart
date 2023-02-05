import 'package:flutter/material.dart';
import 'package:places/domain/favorite_visit_place.dart';
import 'package:places/templates/visiting_screen/favorite_visit_place_achieved_empty_screen.dart';
import 'package:places/ui/screen/favorite_visit_place_card.dart';

import 'favorite_visit_place_empty_screen.dart';

Expanded visitingScreenTabBarView(
    TabController tabController, List<FavoriteVisitPlace> favoriteVisitPlaces) {
  final favoriteVisitPlacesNotAchieved =
      favoriteVisitPlaces.where((element) => !element.isGoalAchieved).toList();
  final favoriteVisitPlacesAchieved =
      favoriteVisitPlaces.where((element) => element.isGoalAchieved).toList();
  return Expanded(
    child: TabBarView(
      controller: tabController,
      children: [
        favoriteVisitPlacesNotAchieved.isEmpty
            ? favoriteVisitPlaceEmptyScreen()
            : ListView.builder(
                itemCount: favoriteVisitPlacesNotAchieved.length,
                itemBuilder: (context, index) {
                  return FavoriteVisitPlaceCard(
                      favoriteVisitPlace:
                          favoriteVisitPlacesNotAchieved[index]);
                },
              ),
        favoriteVisitPlacesAchieved.isEmpty
            ? favoriteVisitPlaceAchievedEmptyScreen()
            : ListView.builder(
                itemCount: favoriteVisitPlacesAchieved.length,
                itemBuilder: (context, index) => FavoriteVisitPlaceCard(
                    favoriteVisitPlace: favoriteVisitPlacesAchieved[index]))
      ],
    ),
  );
}
