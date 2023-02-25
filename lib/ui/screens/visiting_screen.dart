
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:places/ui/screens/res/custom_theme.dart';
import 'package:places/ui/widgets/visiting_screen/custom_tab_bar_text.dart';

import '../../mocks.dart';
import '../widgets/visiting_screen/visiting_screen_tab_container.dart';
import '../widgets/visiting_screen/visiting_screen_tab_bar.dart';
import '../widgets/visiting_screen/visiting_screen_tab_bar_view.dart';
import '../widgets/visiting_screen/visiting_screen_title.dart';


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
    _tab1 = const VisitingScreenTabContainer(
        visitingTabBarText:
            VisitingTabBarText(title: "Хочу посетить", isActive: true));
    _tab2 = const VisitingScreenTabContainer(
        visitingTabBarText:
            VisitingTabBarText(title: "Посетил", isActive: false));
  }

  void _activeTab2() {
    _tab1 = const VisitingScreenTabContainer(
        visitingTabBarText:
            VisitingTabBarText(title: "Хочу посетить", isActive: false));
    _tab2 = const VisitingScreenTabContainer(
        visitingTabBarText:
            VisitingTabBarText(title: "Посетил", isActive: true));
  }

  void _updateTabs({required int tabIndex}) {
    setState(() {
      tabIndex == 0 ? _activateTab1() : _activeTab2();
    });
  }

  var _isLight = true;

  void switchTheme() {
    setState(() {
      _isLight = !_isLight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isLight ? _lightTheme : _darkTheme,
      home: Scaffold(
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
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.format_color_fill),
          onPressed: () => switchTheme(),
        ),
      ),
    );
  }
}
