class Homes {
  final String? title;
  final String? purpose;
  final double? price;
  final int? rooms;
  final String? coverPhoto;
  final String? logo;

  Homes(
      {this.title,
      this.purpose,
      this.price,
      this.rooms,
      this.coverPhoto,
      this.logo});

  factory Homes.fromJson(dynamic json) {
    return Homes(
        title: json['title'] as String,
        purpose: json['purpose'] as String,
        price: json['price'] as double,
        rooms: json['rooms'] as int,
        coverPhoto: json['coverPhoto']['url'] as String,
        logo: json['agency']['logo']['url'] as String);
  }

  static List<Homes> homesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Homes.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Homes {title: $title, purpose: $purpose, price: $price, rooms: $rooms, coverPhoto: $coverPhoto, logo: $logo}';
  }
}
