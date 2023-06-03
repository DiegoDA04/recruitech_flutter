import 'package:recruitech_flutter/data/user.dart';

class Developer {
  final int id;
  final String firstName;
  final String lastName;
  final String description;
  final User user;

  Developer(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.description,
      required this.user});

  Developer.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'],
            firstName: json['firstName'],
            lastName: json['lastName'],
            description: json['description'],
            user: json['user']);
}
