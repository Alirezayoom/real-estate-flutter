import 'dart:convert';

import 'package:http/http.dart' as http;

class APIService {
  // API key
  static const apiKey = "c849995c96msh6428d01e3b45a7bp1487a9jsn6884f3204d03";
  // Base API url
  static const String _baseUrl =
      "https://bayut.p.rapidapi.com/properties/list?locationExternalIDs=5002%2C6020&purpose=for-rent&hitsPerPage=25&page=0&lang=en&sort=city-level-score&rentFrequency=monthly&categoryExternalID=4";
  // Base headers for Response url
  static const Map<String, String> _headers = {
    "content-type": "application/json",
    "x-rapidapi-host": "bayut.p.rapidapi.com",
    "x-rapidapi-key": apiKey,
  };

  // Base API request to get response
  Future<dynamic> get({
    required String endpoint,
    required Map<String, String> query,
  }) async {
    Uri uri = Uri.https(_baseUrl, endpoint, query);
    final response = await http.get(uri, headers: _headers);
    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      print('hi');
      return json.decode(response.body);
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load json data');
    }
  }
}

// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class APIService {
//   // API key
//   // Base API url
//   static const String _baseUrl = "bayut.p.rapidapi.com";
//   // Base headers for Response url
//   static const Map<String, String> _headers = {
//     "x-rapidapi-key": "c849995c96msh6428d01e3b45a7bp1487a9jsn6884f3204d03",
//     "x-rapidapi-host": "bayut.p.rapidapi.com",
//   };

//   // Base API request to get response
//   Future<dynamic> get() async {
//     Uri uri = Uri.https(_baseUrl, "");
//     final response = await http.get(uri, headers: _headers);
//     if (response.statusCode == 200) {
//       // If server returns an OK response, parse the JSON.
//       print("success");
//       return json.decode(response.body);
//     } else {
//       print("not success");
//       // If that response was not OK, throw an error.
//       throw Exception('Failed to load json data');
//     }
//   }
// }




