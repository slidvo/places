import 'package:flutter/material.dart';
import 'package:places/ui/screens/res/custom_theme.dart';
import 'package:places/ui/screens/res/localization.dart';
import 'package:places/ui/widgets/circular_progress_indicator_widget.dart';
import 'package:places/ui/widgets/sight_details_screen/back_button_sight_details.dart';
import 'package:places/ui/widgets/sight_details_screen/build_route_button.dart';
import 'package:places/ui/widgets/sight_details_screen/plan_button.dart';
import 'package:places/ui/widgets/sight_details_screen/to_favorite_button.dart';
import '../../domain/sight.dart';

final ThemeData _lightTheme = CustomTheme.getLightTheme();
final ThemeData _darkTheme = CustomTheme.getDarkTheme();

class SightDetailsScreen extends StatefulWidget {
  final Sight sight;

  const SightDetailsScreen({required this.sight, Key? key}) : super(key: key);

  @override
  State<SightDetailsScreen> createState() => _SightDetailsScreenState();
}

class _SightDetailsScreenState extends State<SightDetailsScreen> {
  var currTheme = _darkTheme;
  var _isLight = false;

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 360,
              width: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    height: 360,
                    child: Image.network(
                      widget.sight.url,
                      fit: BoxFit.fitHeight,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: CircularProgressIndicatorWidget(
                              loadingProgress: loadingProgress,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Positioned(
                    top: 36,
                    left: 16,
                    child: BackButtonSightDetails(),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 7.75,
                      width: 152,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(37, 40, 73, 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: Container(
                  margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.sight.name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Row(
                        children: [
                          Text(widget.sight.type),
                          const Divider(indent: 16),
                          Text(Localization.closedUntil),
                        ],
                      ),
                      const Divider(
                        height: 24,
                        color: Colors.transparent,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 250),
                            child: Text(widget.sight.details),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              height: 24,
              color: Colors.transparent,
            ),
            const BuildRouteButton(),
            const Divider(height: 24),
            SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  PlanButton(),
                  Divider(indent: 16),
                  ToFavoriteButton(),
                ],
              ),
            ),
            const Divider(
              height: 24,
              color: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 2,
                  color: const Color.fromRGBO(217, 217, 217, 1),
                ),
              ],
            ),
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
