import 'dart:convert';
import 'homes.dart';
import 'package:http/http.dart' as http;

class SaleApi {
  static Future<List<Homes>> getHomes() async {
    var uri = Uri.https('bayut.p.rapidapi.com', 'properties/list', {
      "locationExternalIDs": '5002,6020',
      "purpose": 'for-sale',
      "hitsPerPage": '6',
      "page": '0',
      "lang": 'en',
      "sort": 'city-level-score',
      "rentFrequency": 'monthly',
      "categoryExternalID": '4'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Key': 'c849995c96msh6428d01e3b45a7bp1487a9jsn6884f3204d03',
      'X-RapidAPI-Host': 'bayut.p.rapidapi.com',
    });

    Map data = jsonDecode(response.body);
    List temp = [];

    for (var i in data['hits']) {
      temp.add(i);
    }

    return Homes.homesFromSnapshot(temp);
  }
}
