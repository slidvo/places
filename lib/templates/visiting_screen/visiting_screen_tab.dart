import 'package:flutter/material.dart';

Container visitingScreenTab(Text text, bool isActive) {
  return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isActive
              ? const Color.fromRGBO(59, 62, 91, 1)
              : const Color.fromRGBO(245, 245, 245, 1),
          borderRadius: const BorderRadius.all(Radius.circular(40))),
      height: 40,
      width: double.infinity,
      child: text);
}

Container visitingScreenDefaultTabs(
  TabController tabController,
  Color inactiveColor,
  Function updateTabs,
  Container tab1,
  Container tab2,
) {
  const tabBorderRadius = BorderRadius.all(Radius.circular(40));

  return Container(
    height: 40,
    width: double.infinity,
    margin: const EdgeInsets.fromLTRB(16, 6, 15, 6),
    decoration: BoxDecoration(
      color: inactiveColor,
      borderRadius: tabBorderRadius,
    ),
    child: TabBar(
      controller: tabController,
      onTap: (value) {
        updateTabs(value);
      },
      labelPadding: EdgeInsets.zero,
      indicatorColor: Colors.transparent,
      splashBorderRadius: tabBorderRadius,
      labelColor: Colors.transparent,
      tabs: [tab1, tab2],
    ),
  );
}
