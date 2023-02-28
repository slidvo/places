import 'package:flutter/material.dart';
import 'package:places/ui/screens/res/custom_theme.dart';
import '../../domain/sight.dart';

final ThemeData _lightTheme = CustomTheme.getLightTheme();
final ThemeData _darkTheme = CustomTheme.getDarkTheme();

class SightDetails extends StatefulWidget {
  final Sight sight;

  const SightDetails({required this.sight, Key? key}) : super(key: key);

  @override
  State<SightDetails> createState() => _SightDetailsState();
}

class _SightDetailsState extends State<SightDetails> {
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
        body: Container(
          child: Column(
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
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: 36,
                      left: 16,
                      child: Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: currTheme.backgroundColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child:
                              const Icon(Icons.arrow_back_ios_new, size: 14)),
                    ),
                    Positioned(
                      bottom: 0,
                      child: SizedBox(
                        height: 7.75,
                        width: 152,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(37, 40, 73, 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
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
                            Text(
                              widget.sight.type,
                            ),
                            const Divider(
                              indent: 16,
                            ),
                            const Text(
                              "закрыто до 09:00",
                            ),
                          ],
                        ),
                        const Divider(
                          height: 24,
                          color: Colors.transparent,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: 250),
                              child: Text(
                                widget.sight.details,
                              ),
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
              Container(
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromRGBO(76, 175, 80, 1),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 20,
                      height: 22,
                      color: Colors.white,
                    ),
                    Divider(
                      color: Colors.transparent,
                      indent: 16,
                    ),
                    const Text(
                      "ПОСТРОИТЬ МАРШРУТ",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontFamily: "Roboto",
                        height: 1.29,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    )
                  ],
                ),
              ),
              const Divider(height: 24),
              Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_month,
                              size: 24,
                            ),
                            Divider(
                              indent: 9,
                            ),
                            Text(
                              "Запланировать",
                            )
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      indent: 16,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.favorite_border,
                            ),
                            Divider(
                              indent: 9,
                            ),
                            Text(
                              "В избранное",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 24,
                color: Colors.transparent,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 2,
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.format_color_fill),
          onPressed: () => switchTheme(),
        ),
      ),
    );
  }
}
