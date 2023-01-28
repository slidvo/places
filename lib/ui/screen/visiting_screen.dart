import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/styles/custom_text_style.dart';
import 'package:places/templates/visiting_screen/visiting_screen_tab.dart';
import 'package:places/templates/visiting_screen/visiting_screen_tab_bar_view.dart';
import 'package:places/templates/visiting_screen/visiting_screen_title.dart';
import '../../templates/app_bar_default.dart' as app_bar_templates;

class VisitingScreen extends StatefulWidget {
  const VisitingScreen({Key? key}) : super(key: key);

  @override
  State<VisitingScreen> createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen>
    with SingleTickerProviderStateMixin {
  final Color activeColor = const Color.fromRGBO(59, 62, 91, 1);
  final Color inactiveColor = const Color.fromRGBO(245, 245, 245, 1);
  bool tab1IsActive = true;
  bool tab2IsActive = false;
  late TabController _tabController;
  late Color tab1Color;
  late Color tab2Color;
  late Container tab1;
  late Container tab2;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _tabController.index == 0 ? _updateTabs(0) : _updateTabs(1);
      });
    });

    tab1 = visitingScreenTab(
        activeVisitingTabBar("Хочу посетить", FontWeight.w700, 14, 1),
        tab1IsActive);
    tab2 = visitingScreenTab(
        inActiveVisitingTabBar("Посетить", FontWeight.w700, 14, 1),
        tab2IsActive);
    tab1Color = activeColor;
    tab2Color = inactiveColor;
  }

  _updateTabs(value) {
    setState(() {
      if (value == 0) {
        tab1Color = activeColor;
        tab2Color = inactiveColor;
        tab1IsActive = true;
        tab2IsActive = false;
        tab1 = visitingScreenTab(
            activeVisitingTabBar("Хочу посетить", FontWeight.w700, 14, 1),
            tab1IsActive);
        tab2 = visitingScreenTab(
            inActiveVisitingTabBar("Посетить", FontWeight.w700, 14, 1),
            tab2IsActive);
      }
      if (value == 1) {
        tab1Color = inactiveColor;
        tab2Color = activeColor;
        tab1IsActive = false;
        tab2IsActive = true;
        tab1 = visitingScreenTab(
            inActiveVisitingTabBar("Хочу посетить", FontWeight.w700, 14, 1),
            tab1IsActive);
        tab2 = visitingScreenTab(
            activeVisitingTabBar("Посетить", FontWeight.w700, 14, 1),
            tab2IsActive);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar_templates.appBarDefault(),
      body: Column(
        children: [
          materialVisitingScreenTitle(),
          visitingScreenDefaultTabs(
            _tabController,
            inactiveColor,
            _updateTabs,
            tab1,
            tab2,
          ),
          visitingScreenTabBarView(_tabController, favoriteVisitPlaceMocks),
        ],
      ),
    );
  }
}
