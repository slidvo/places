import 'package:flutter/material.dart';
import 'package:places/ui/screens/res/custom_theme.dart';
import 'package:places/ui/screens/res/localization.dart';
import 'package:places/ui/widgets/bottom_navigation_bar_custom.dart';
import 'package:places/ui/widgets/visiting_screen/custom_tab_bar_text.dart';

import 'package:places/mocks.dart';
import 'package:places/ui/widgets/visiting_screen/visiting_screen_tab_container.dart';
import 'package:places/ui/widgets/visiting_screen/visiting_screen_tab_bar.dart';
import 'package:places/ui/widgets/visiting_screen/visiting_screen_tab_bar_view.dart';
import 'package:places/ui/widgets/visiting_screen/visiting_screen_title.dart';

final ThemeData _lightTheme = CustomTheme.getLightTheme();
final ThemeData _darkTheme = CustomTheme.getDarkTheme();

class VisitingScreen extends StatefulWidget {
  const VisitingScreen({Key? key}) : super(key: key);

  @override
  State<VisitingScreen> createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen>
    with SingleTickerProviderStateMixin {
  final Color _inactiveColor = const Color.fromRGBO(245, 245, 245, 1);
  late TabController _tabController;
  late Widget _tab1;
  late Widget _tab2;
  var _isLight = false;

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

  void _activateTab1() {
    _tab1 = VisitingScreenTabContainer(
        visitingTabBarText: VisitingTabBarText(
            title: Localization.wantToVisit, isActive: true));
    _tab2 = VisitingScreenTabContainer(
        visitingTabBarText:
            VisitingTabBarText(title: Localization.visited, isActive: false));
  }

  void _activeTab2() {
    _tab1 = VisitingScreenTabContainer(
        visitingTabBarText: VisitingTabBarText(
            title: Localization.wantToVisit, isActive: false));
    _tab2 = VisitingScreenTabContainer(
        visitingTabBarText:
            VisitingTabBarText(title: Localization.visited, isActive: true));
  }

  void _updateTabs({required int tabIndex}) {
    setState(() {
      tabIndex == 0 ? _activateTab1() : _activeTab2();
    });
  }

  var currTheme = _darkTheme;

  void switchTheme() {
    setState(() {
      _isLight = !_isLight;
      currTheme = _isLight ? _lightTheme : _darkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: currTheme,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.zero,
          child: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
        ),
        body: Column(
          children: [
            const VisitingScreenTittle(),
            VisitingScreenTabBar(
              tabController: _tabController,
              inactiveColor: _inactiveColor,
              updateTabs: _updateTabs,
              tabs: [_tab1, _tab2],
            ),
            VisitingScreenTabBarView(
              tabController: _tabController,
              favoriteVisitPlaces: favoriteVisitPlaceMocks,
            ),
          ],
        ),
        bottomNavigationBar: const BottomNavigationBarCustom(),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.format_color_fill),
          onPressed: () => switchTheme(),
        ),
      ),
    );
  }
}
