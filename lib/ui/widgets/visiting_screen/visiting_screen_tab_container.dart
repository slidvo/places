import 'package:flutter/material.dart';
import 'package:places/ui/widgets/visiting_screen/custom_tab_bar_text.dart';

class VisitingScreenTabContainer extends StatelessWidget {
  final VisitingTabBarText visitingTabBarText;

  const VisitingScreenTabContainer({Key? key, required this.visitingTabBarText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: visitingTabBarText.isActive
                ? const Color.fromRGBO(59, 62, 91, 1)
                : const Color.fromRGBO(245, 245, 245, 1),
            borderRadius: const BorderRadius.all(Radius.circular(40))),
        height: 40,
        width: double.infinity,
        child: visitingTabBarText);
  }
}
