import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import '../../domain/sight.dart';

class SightDetails extends StatelessWidget {
  final Sight sight;

  const SightDetails({required this.sight, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 360,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  height: 360,
                  left: -135,
                  child: Image.network(mocks[0].url),
                ),
                Positioned(
                  top: 36,
                  left: 16,
                  child: Container(
                      width: 32,
                      height: 32,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Icon(Icons.arrow_back_ios_new, size: 14)),
                ),
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    height: 7.75,
                    width: 152,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(37, 40, 73, 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child:  Container(
              margin: EdgeInsets.only(top: 30),
              child: Container(
                margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sight.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontFamily: "Roboto",
                        height: 1.2,
                        color: Color.fromRGBO(59, 62, 91, 1),
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Row(
                      children: [
                        Text(
                          sight.type,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontFamily: "Roboto",
                            height: 1.29,
                            color: Color.fromRGBO(59, 62, 91, 1),
                            decoration: TextDecoration.none,
                          ),
                        ),
                        const Divider(
                          indent: 16,
                        ),
                        const Text(
                          "закрыто до 09:00",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontFamily: "Roboto",
                            height: 1.29,
                            color: Color.fromRGBO(59, 62, 91, 1),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 24,
                      color: Colors.transparent,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 250
                          ),
                          child: Text(
                            sight.details,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontFamily: "Roboto",
                              height: 1.2,
                              color: Color.fromRGBO(59, 62, 91, 1),
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            height: 24,
            color: Colors.transparent,
          ),
          Container(
            height: 48,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromRGBO(76, 175, 80, 1),
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
                Divider(
                  color: Colors.transparent,
                  indent: 16,
                ),
                const Text(
                  "ПОСТРОИТЬ МАРШРУТ",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontFamily: "Roboto",
                    height: 1.29,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                )
              ],
            ),
          ),
          const Divider(height: 24),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: Color.fromRGBO(124, 126, 146, 0.56),
                          size: 24,
                        ),
                        Divider(
                          indent: 9,
                        ),
                        Text(
                          "Запланировать",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontFamily: "Roboto",
                            height: 1.2,
                            color:
                            Color.fromRGBO(124, 126, 146, 0.56),
                            decoration: TextDecoration.none,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Divider(
                  indent: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.favorite_border,
                        ),
                        Divider(
                          indent: 9,
                        ),
                        Text(
                          "В избранное",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontFamily: "Roboto",
                            height: 1.2,
                            color: Color.fromRGBO(59, 62, 91, 1),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 24,
            color: Colors.transparent,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 2,
                color: Color.fromRGBO(217, 217, 217, 1),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
