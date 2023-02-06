import 'package:flutter/material.dart';

class VisitingScreenTittle extends StatelessWidget {
  final _title = "Избранное";

  const VisitingScreenTittle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
      alignment: Alignment.center,
      child: Text(
        _title,
        style: const TextStyle(
          fontFamily: "Roboto",
          fontStyle: FontStyle.normal,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          height: 1,
        ),
      ),
    );
  }
}
