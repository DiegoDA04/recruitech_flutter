import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:recruitech_flutter/data/job.dart';

class HttpHelper {
  final String urlBase =
      'https://backend-recruitech-production.up.railway.app/api/v1/job';

  Future<Job?> getJob(id) async {
    http.Response response = await http.get(Uri.parse('$urlBase/$id'));

    if (response.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(response.body);
      Job job = Job.fromJson(jsonResponse);
      return job;
    } else {
      return null;
    }
  }
}
