import 'dart:convert';
import 'package:validus/apis/apis.dart';
import 'package:http/http.dart' as http;
import '../modelclasses/watch.dart';

class ApiService {



  static Future<Watch> watchList() async
  {
    String url = APIS.watchListAPI;
    final response = await http.get(Uri.parse(url), headers:{
      "Accept": "application/json",
      'Content-Type': 'application/json',
    });
    if (response.statusCode == 200)
    {
      var loginMap = jsonDecode(response.body);
      return Watch.fromJson(loginMap);
    } else {
      return Watch();
    }
  }



}