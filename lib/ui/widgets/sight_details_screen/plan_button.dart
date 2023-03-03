import 'package:flutter/material.dart';
import 'package:places/ui/screens/res/localization.dart';

class PlanButton extends StatefulWidget {
  const PlanButton({Key? key}) : super(key: key);

  @override
  State<PlanButton> createState() => _PlanButtonState();
}

class _PlanButtonState extends State<PlanButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => debugPrint("Нажата кнопка ${widget.runtimeType}"),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Icon(
                Icons.calendar_month,
                size: 24,
              ),
              const Divider(indent: 9),
              Text(Localization.plan)
            ],
          ),
        ],
      ),
    );
  }
}
