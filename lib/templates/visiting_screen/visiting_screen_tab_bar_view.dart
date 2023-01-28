import 'package:flutter/material.dart';
import 'package:places/domain/favorite_visit_place.dart';
import 'package:places/ui/screen/favorite_visit_place_card.dart';

Expanded visitingScreenTabBarView(
    TabController tabController, List<FavoriteVisitPlace> favoriteVisitPlaces) {
  return Expanded(
    child: TabBarView(
      controller: tabController,
      children: [
        ListView.builder(
          itemCount: favoriteVisitPlaces.length,
          itemBuilder: (context, index) {
            return FavoriteVisitPlaceCard(
                favoriteVisitPlace: favoriteVisitPlaces[index]);
          },
        ),
        const Center(child: Text("Content Tab 2")),
      ],
    ),
  );
}
