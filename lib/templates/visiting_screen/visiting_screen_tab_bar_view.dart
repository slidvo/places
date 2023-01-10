import 'package:flutter/material.dart';

Expanded visitingScreenTabBarView(TabController tabController){
  return Expanded(
    child: TabBarView(
      controller: tabController,
      children: [
        Center(child: Text("Content Tab 1")),
        Center(child: Text("Content Tab 2")),
      ],
    ),
  );
}