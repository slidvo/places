import 'package:places/domain/favorite_visit_place.dart';

import 'domain/sight.dart';

final List<Sight> mocks = [
  Sight(
    name: "Сургутский городской парк культуры и отдыха",
    lat: 61.260391271538026,
    lon: 73.35726569476017,
    url: "https://surgutpark.ru/assets/images/slider/10.JPG",
    type: "Отдых",
    details: "Городской парк культуры и отдыха является важным культурным "
        "центром города Сургута. Это не только место отдыха горожан, по "
        "катанию на аттракционах с развлечениями, но и площадка, где "
        "традиционно проходят мероприятия, посвященные календарным и "
        "знаменательным датам России, где разрабатываются и осуществляются "
        "серьезные проекты со значимыми программами."
        "Городской парк культуры и отдыха был основан в 70-е годы и подставлял"
        "собой зелёный массив с бетонированной площадкой, где собиралась молодёжь."
        " В 1982 году ПО Сургутнефтегаз приобрело для города Сургута шесть "
        "аттракционов, это и послужило началом организации Городского парка."
        " В 1997 году Городской парк был переведён на бюджетное финансирование"
        " и получил статус муниципального учреждения.",
  ),
  Sight(
    name: "Старый Сургут",
    lat: 61.23715610487469,
    lon: 73.40727212735965,
    url:
        "https://api.visitugra.net/storage/picture/post/4ad8490ef59d713c480edac0087930509a66e3b7.jpg",
    type: "Памятники",
    details:
        "Историко-культурный центр «Старый Сургут» - самый впечатляющий из "
        "городских культурных символов, являющихся одним из имиджевых знаков"
        " Сургута, несущий в себе неповторимый образ Сургута, как отличительный"
        " признак  среди других городов Севера Западной Сибири, свидетельствующий"
        " о том, что это старейший город Среднего Приобья.",
  ),
  Sight(
    name: "Аквамарин",
    lat: 61.26535307589292,
    lon: 73.43019673488668,
    url: "https://img.tourister.ru/files/1/8/0/4/6/7/9/9/original.jpg",
    type: "Развлечения",
    details: "Аквапарк «Аквамарин» в Сургуте — одна из самых популярных"
        " достопримечательностей города как для туристов, так и для местных "
        "жителей. Это целый водно-развлекательный комплекс, крупнейший в "
        "Ханты-Мансийском автономном округе.",
  ),
  Sight(
      name: "Секретная база США",
      lat: 32.664162,
      lon: -111.487119,
      url:
          "https://img.gazeta.ru/files3/225/10709225/Al_Udeid_Air_Base-pic905-895x505-48956.jpg",
      details:
          "Раскрыта секретная база США, на которой изучали внеземные технологии",
      type: "секреты"),
  Sight(
      name: "Самолёт в джунглях",
      lat: 45.408166,
      lon: -123.008118,
      url:
          "https://img-fotki.yandex.ru/get/5009/19099752.40/0_a0540_adae51e5_XL.jpg",
      type: "мистика",
      details: "Просто пассажирский самолёт в джунглях")
];

final List<FavoriteVisitPlace> favoriteVisitPlaceMocks = [
  FavoriteVisitPlace(
    isGoalAchieved: false,
    sight: mocks[0],
    planedDate: DateTime.now(),
    openingTime: DateTime.now(),
  ),
  FavoriteVisitPlace(
    isGoalAchieved: false,
    sight: mocks[1],
    planedDate: DateTime.now(),
    openingTime: DateTime.now(),
  ),
  FavoriteVisitPlace(
    isGoalAchieved: false,
    sight: mocks[2],
    planedDate: DateTime.now(),
    openingTime: DateTime.now(),
  ),
  FavoriteVisitPlace(
    isGoalAchieved: true,
    sight: mocks[3],
    planedDate: DateTime.now(),
    openingTime: DateTime.now(),
  ),
  FavoriteVisitPlace(
    isGoalAchieved: true,
    sight: mocks[4],
    planedDate: DateTime.now(),
    openingTime: DateTime.now(),
  ),
];
