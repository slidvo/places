import 'package:flutter/material.dart';

class BackButtonSightDetails extends StatefulWidget {
  const BackButtonSightDetails({Key? key}) : super(key: key);

  @override
  State<BackButtonSightDetails> createState() => _BackButtonSightDetailsState();
}

class _BackButtonSightDetailsState extends State<BackButtonSightDetails> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => debugPrint("Нажата кнопка ${widget.runtimeType.toString()}"),
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: const Icon(Icons.arrow_back_ios_new, size: 14),
      ),
    );
  }
}
