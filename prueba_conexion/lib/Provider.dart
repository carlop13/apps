import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EcommProvider extends ChangeNotifier {
  String _baseUrl = "api.themoviedb.org";
  String _apiKey = "d98b1b7fab1338b457123cc61f067afd";
  String _languaje = "es-ES";

  EcommProvider() {
    print("Ecomm Provider Init");

    getProducts();
  }

  getProducts() async {
    var url = Uri.http(_baseUrl, "3/movie/now_playing",
        {"api_key": _apiKey, "language": _languaje, "page": "1"});

    final response = await http.get(url);
    final Map<String, dynamic> decodedData = json.decode(response.body);
    print(decodedData["results"]);
  }
}
