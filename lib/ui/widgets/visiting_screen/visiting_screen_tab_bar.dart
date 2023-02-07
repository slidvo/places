import 'package:flutter/material.dart';

class VisitingScreenTabBar extends StatelessWidget {
  final TabController tabController;
  final Color inactiveColor;
  final Function updateTabs;
  final List<Widget> tabs;
  static const tabBorderRadius = BorderRadius.all(Radius.circular(40));

  const VisitingScreenTabBar({
    Key? key,
    required this.tabController,
    required this.inactiveColor,
    required this.updateTabs,
    required this.tabs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        onTap: (tabIndex) {
          updateTabs(tabIndex: tabIndex);
        },
        labelPadding: EdgeInsets.zero,
        indicatorColor: Colors.transparent,
        splashBorderRadius: tabBorderRadius,
        labelColor: Colors.transparent,
        tabs: tabs,
      ),
    );
  }
}
