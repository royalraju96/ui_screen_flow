class Destination {
  const Destination(
      {required this.city, required this.country, required this.rating});
  final String city, country, rating;

  String get image => "assets/images/${city.toLowerCase()}.jpg";
}
