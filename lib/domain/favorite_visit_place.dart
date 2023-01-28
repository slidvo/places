import 'package:places/domain/sight.dart';

/// Избранное место, которое человек хочет посетить
class FavoriteVisitPlace {
  /// Интересное место
  final Sight sight;

  /// Запланированная дата
  final DateTime planedDate;

  /// Время открытия магазина
  final DateTime openingTime;

  FavoriteVisitPlace({
    required this.sight,
    required this.planedDate,
    required this.openingTime
  });
}
