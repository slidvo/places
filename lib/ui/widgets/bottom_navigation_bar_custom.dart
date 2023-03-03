import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/screens/res/assets_path.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  const BottomNavigationBarCustom({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarCustom> createState() =>
      _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        for (var assetPath in AssetsPath.assets)
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                assetPath,
                color: Theme.of(context)
                    .bottomNavigationBarTheme
                    .selectedItemColor,
              ),
              label: "",
          ),
      ],
      onTap: (value) => debugPrint("Нажата кнопка $value : ${AssetsPath.assets[value]}"),
    );
  }
}
