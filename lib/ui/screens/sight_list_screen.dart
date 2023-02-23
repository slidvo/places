import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screens/res/themes.dart';
import 'package:places/ui/screens/sight_card.dart';

final ThemeData _lightTheme = CustomTheme.getLightTheme();
final ThemeData _darkTheme = CustomTheme.getDarkTheme();

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  var _isLight = true;
  final Color defaultColor = Colors.white;

  void switchTheme() {
    setState(() {
      _isLight = !_isLight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Интересные места",
      theme: _isLight ? _lightTheme : _darkTheme,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(125),
          child: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
            ),
            elevation: 0,
            toolbarHeight: 128,
            title: Container(
              alignment: Alignment.center,
              child: Text(
                "Список интересных мест",
                style: (_isLight ? _lightTheme : _darkTheme).textTheme.headline5,
              ),
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
                          (sight) => SightCard(
                            sight: sight,
                            isLight: _isLight,
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
