import 'package:flutter/material.dart';
import 'package:places/ui/screens/res/localization.dart';

class ToFavoriteButton extends StatefulWidget {
  const ToFavoriteButton({Key? key}) : super(key: key);

  @override
  State<ToFavoriteButton> createState() => _ToFavoriteButtonState();
}

class _ToFavoriteButtonState extends State<ToFavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => debugPrint("Нажата кнопка ${widget.runtimeType}"),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Icon(Icons.favorite_border),
              const Divider(indent: 9),
              Text(Localization.favorites),
            ],
          ),
        ],
      ),
    );
  }
}
