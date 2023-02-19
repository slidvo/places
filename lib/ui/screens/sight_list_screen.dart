import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screens/sight_card.dart';

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
          title: Text("Список\nинтересных мест", style: Theme.of(context).textTheme.headline4,),
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
