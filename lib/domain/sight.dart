///Достопримечательность
class Sight {
  /// Название места
  final String name;

  ///Координата места - широта
  final double lat;

  ///Координата места - долгота
  final double lon;

  ///Путь до фотографии в интернете
  final String url;

  ///Описание достопримечательности
  final String details;

  ///Тип достопримечательности
  final String type;

  Sight({
    required this.name,
    required this.lat,
    required this.lon,
    required this.url,
    required this.type,
    required this.details,
  });
}
