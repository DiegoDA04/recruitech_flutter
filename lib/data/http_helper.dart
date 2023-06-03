import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:recruitech_flutter/data/login_class/login_request.dart';
import 'package:recruitech_flutter/data/login_class/login_response.dart';

class HttpHelper {
  final String urlBase = "https://backend-recruitech-production.up.railway.app/api/v1/";

  Future<LoginResponse?> login(LoginRequest request) async {
    const String endPoint = "auth/sign-in";
    http.Response response = await http.post(Uri.parse(urlBase+endPoint),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(request.toJson()),
    );
    if (response.statusCode == HttpStatus.ok) {
      return LoginResponse.fromJson(jsonDecode(response.body));
    } return null;
  } 
}