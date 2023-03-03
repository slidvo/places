import 'package:flutter/material.dart';
import 'package:places/ui/screens/res/localization.dart';

class BuildRouteButton extends StatefulWidget {
  const BuildRouteButton({Key? key}) : super(key: key);

  @override
  State<BuildRouteButton> createState() => _BuildRouteButtonState();
}

class _BuildRouteButtonState extends State<BuildRouteButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromRGBO(76, 175, 80, 1),
      child: InkWell(
        onTap: () => debugPrint("Нажата кнопка ${widget.runtimeType.toString()}"),
        splashColor: Colors.grey,
        child: Container(
          height: 48,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
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
              const Divider(
                color: Colors.transparent,
                indent: 16,
              ),
              Text(
                Localization.buildRoute,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
