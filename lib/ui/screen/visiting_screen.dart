import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:places/mocks.dart';
import 'package:places/styles/custom_text_style.dart';

import '../widgets/visiting_screen/visiting_screen_tab.dart';
import '../widgets/visiting_screen/visiting_screen_tab_bar_view.dart';
import '../widgets/visiting_screen/visiting_screen_title.dart';

class VisitingScreen extends StatefulWidget {
  const VisitingScreen({Key? key}) : super(key: key);

  @override
  State<VisitingScreen> createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen>
    with SingleTickerProviderStateMixin {
  final Color _inactiveColor = const Color.fromRGBO(245, 245, 245, 1);
  late TabController _tabController;
  late Container _tab1;
  late Container _tab2;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _tabController.index == 0
            ? _updateTabs(tabIndex: 0)
            : _updateTabs(tabIndex: 1);
      });
    });

    _activateTab1();
  }

  _activateTab1() {
    _tab1 = visitingScreenTab(
        const VisitingTabBar(title: "Хочу посетить", isActive: true));
    _tab2 = visitingScreenTab(
        const VisitingTabBar(title: "Посетил", isActive: false));
  }

  _activeTab2() {
    _tab1 = visitingScreenTab(
        const VisitingTabBar(title: "Хочу посетить", isActive: false));
    _tab2 = visitingScreenTab(
        const VisitingTabBar(title: "Посетил", isActive: true));
  }

  void _updateTabs({required int tabIndex}) {
    setState(() {
      tabIndex == 0 ? _activateTab1() : _activeTab2();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
      ),
      body: Column(
        children: [
          const VisitingScreenTittle(),
          VisitingScreenDefaultTabs(
            tabController: _tabController,
            inactiveColor: _inactiveColor,
            updateTabs: _updateTabs,
            tab1: _tab1,
            tab2: _tab2,
          ),
          VisitingScreenTabBarView(
            tabController: _tabController,
            favoriteVisitPlaces: favoriteVisitPlaceMocks,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("res/image/list_icon.png"), label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("res/image/map_icon.png"), label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("res/image/heart_full.png"), label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("res/image/settings_icon.png"), label: ""),
        ],
      ),
    );
  }
}
