import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  Color defaultColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(125),
        child: AppBar(
          backgroundColor: defaultColor,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
          elevation: 0,
          toolbarHeight: 128,
          title: RichText(
            textAlign: TextAlign.left,
            text: const TextSpan(
              style: TextStyle(
                color: Color.fromRGBO(37, 40, 73, 1),
                fontFamily: "Roboto",
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                fontSize: 32,
                height: 1.12,
              ),
              children: [
                TextSpan(
                  text: "C",
                  style: TextStyle(
                    color: Color.fromRGBO(76, 175, 80, 1),
                  ),
                ),
                TextSpan(text: "писок \n"),
                TextSpan(
                  text: "и",
                  style: TextStyle(
                    color: Color.fromRGBO(252, 221, 61, 1),
                  ),
                ),
                TextSpan(text: "нтересных мест")
              ],
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
                  children:
                      mocks.map((sight) => SightCard(sight: sight)).toList(),
                ),
              ],
            )
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
