import 'dart:convert';

import 'package:conclase/app/screens/api_page/api_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

mixin APIPageMixin on State<APIPage> {
  var zones;

  dynamic getTimeZone() async {
    final String url = 'http://worldtimeapi.org/api/timezone';
    try {
      var response = await http.get(Uri.parse(url));
      return jsonDecode(response.body);
    } catch (e) {
      print('An error occurred. $e');
    }
  }

  void updateZone(body) {
    setState(() {
      zones = body;
    });
  }
}
