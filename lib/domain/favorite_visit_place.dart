import 'package:places/domain/sight.dart';

/// Избранное место, которое человек хочет посетить
class FavoriteVisitPlace {
  ///Флаг, обозначающий достигнута ли цель true - цель достигнута,
  ///false - цель не достигнута
  final bool isGoalAchieved;

  /// Время открытия магазина
  final DateTime openingTime;

  /// Запланированная дата
  final DateTime planedDate;

  /// Интересное место
  final Sight sight;

  FavoriteVisitPlace({
    required this.isGoalAchieved,
    required this.sight,
    required this.planedDate,
    required this.openingTime,
  });
}
