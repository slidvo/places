import 'package:flutter/material.dart';
import 'package:places/ui/screens/res/assets_path.dart';
import 'package:places/ui/screens/res/localization.dart';

class BuildRouteButton extends StatefulWidget {
  const BuildRouteButton({Key? key}) : super(key: key);

  @override
  State<BuildRouteButton> createState() => _BuildRouteButtonState();
}

class _BuildRouteButtonState extends State<BuildRouteButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      height: 48,
      child: ElevatedButton(
        onPressed: () =>
            debugPrint("  Нажата кнопка ${widget.runtimeType.toString()}"),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 20,
              height: 22,
              child: Image.asset(
                AssetsPath.goIcon,
                color: Colors.white,
              ),
            ),
            const Divider(
              color: Colors.transparent,
              indent: 16,
            ),
            Text(
              Localization.buildRoute,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
