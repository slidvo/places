import 'package:flutter/material.dart';
import 'package:places/styles/custom_text_style.dart';

class VisitingScreenDefaultTabs extends StatelessWidget {
  final TabController tabController;
  final Color inactiveColor;
  final Function updateTabs;
  final Container tab1;
  final Container tab2;
  static const tabBorderRadius = BorderRadius.all(Radius.circular(40));

  const VisitingScreenDefaultTabs({
    Key? key,
    required this.tabController,
    required this.inactiveColor,
    required this.updateTabs,
    required this.tab1,
    required this.tab2,
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
        tabs: [tab1, tab2],
      ),
    );
  }
}

Container visitingScreenTab(VisitingTabBar visitingTabBar) {
  return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: visitingTabBar.isActive
              ? const Color.fromRGBO(59, 62, 91, 1)
              : const Color.fromRGBO(245, 245, 245, 1),
          borderRadius: const BorderRadius.all(Radius.circular(40))),
      height: 40,
      width: double.infinity,
      child: visitingTabBar);
}
