import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screens/res/custom_colors.dart';

class SightCard extends StatelessWidget {
  final Sight sight;
  final bool isLight;

  const SightCard({
    required this.sight,
    required this.isLight,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Container(
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        decoration: BoxDecoration(
            color: isLight
                ? CustomColors.lmSightCardBackgroundColor
                : CustomColors.dmSightCardBackgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      child: Image.network(
                        sight.url,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                  : null,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 16,
                    child: Text(
                      sight.type,
                      style: const TextStyle(
                          color: Colors.white54,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          height: 1.29,
                          fontStyle: FontStyle.normal,
                          fontFamily: "Roboto"),
                    ),
                  ),
                  Positioned(
                    right: 18,
                    top: 19,
                    child: Container(
                      child: Image.asset("res/image/heart.png"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Stack(
                  children: [
                    Positioned(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            sight.name,
                            style: const TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 16,
                            ),
                          ),
                          ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 200,
                            ),
                            child: Text(
                              sight.details,
                              style: const TextStyle(
                                color: Color.fromRGBO(124, 126, 146, 1),
                                fontFamily: "Roboto",
                                fontSize: 14,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
