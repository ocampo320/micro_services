import 'dart:convert';

import 'package:country_app/home_module/models/country.dart';

import '../../utils/errors/app_exception.dart';
import '../models/token.dart';
import 'package:http/http.dart' as http;
class CountryServices {

  static Future<List<Country>> getCountries(String token) async {
    List<Country> lista = [];
    Uri url =
    Uri.parse("https://www.universal-tutorial.com/api/countries/");
    final response = await http.get(url,headers: {
      "Authorization": 'Bearer $token',
      "Accept": "application/json"
    });
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      result.map((c) => Country.fromJson(c)).toList().forEach((element) {
        lista.add(element);
      });
    } else {
      throw Exception("Failed to load movies!");
    }
    return lista;
  }


}