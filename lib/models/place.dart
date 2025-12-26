class Place {
  final int id;
  final String name;
  final String image;
  final String location;

  Place({
    required this.id,
    required this.name,
    required this.image,
    required this.location,
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      location: json['location'],
    );
  }
}
