import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/place.dart';

class PlaceService {
  static const String apiUrl = "http://10.0.2.2:8080/api/places";

  Future<List<Place>> getAllPlace() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((e) => Place.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load places from backend");
    }
  }
}
