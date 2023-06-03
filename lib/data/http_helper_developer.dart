import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:recruitech_flutter/data/developer.dart';

class HttpHelperDeveloper {
  final String urlBase =
      'https://backend-recruitech-production.up.railway.app/api/v1/developers';

  Future<Developer?> getDevelopers(id) async {
    http.Response response = await http.get(Uri.parse('$urlBase/$id'));

    if (response.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(response.body);
      Developer developer = Developer.fromJson(jsonResponse);
      return developer;
    }
    return null;
  }
}
