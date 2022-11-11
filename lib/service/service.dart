import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ignotus/model/model.dart';
import 'package:http/http.dart' as http;

class Service {
  static Future<Model?> fetch() async {
    var url = Uri.parse("https://reqres.in/api/users?page=2");
    var response;

    try {
      response = await http.get(url);
      if (response.statusCode == 200) {
        return Model.fromJson(jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
