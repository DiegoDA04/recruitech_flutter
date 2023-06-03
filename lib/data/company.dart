import 'package:recruitech_flutter/data/user.dart';

class Company {
  final int id;
  final String name;
  final User user;

  Company({required this.id, required this.name, required this.user});

  Company.fromJson(Map<String, dynamic> json)
      : this(id: json['id'], name: json['name'], user: json['user']);
}
