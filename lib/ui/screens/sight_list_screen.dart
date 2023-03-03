import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screens/res/custom_theme.dart';
import 'package:places/ui/screens/res/localization.dart';
import 'package:places/ui/widgets/sight_card.dart';

final ThemeData _lightTheme = CustomTheme.getLightTheme();
final ThemeData _darkTheme = CustomTheme.getDarkTheme();

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  var _isLight = true;
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
      title: Localization.interestingPlaces,
      theme: currTheme,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(125),
          child: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 128,
            title: Text(
              Localization.interestingPlacesList,
              style: currTheme.textTheme.titleLarge,
            ),
          ),
        ),
        body: Center(
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: mocks
                        .map(
                          (sight) => InkWell(
                            onTap: () => debugPrint("Нажата карточка ${sight.name}"),
                            child: SightCard(
                              sight: sight,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              )
            ],
          ),
        ),
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.format_color_fill),
          onPressed: () => switchTheme(),
        ),
      ),
    );
  }
}
