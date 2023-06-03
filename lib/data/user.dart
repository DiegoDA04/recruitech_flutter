import 'package:recruitech_flutter/data/company.dart';
import 'package:recruitech_flutter/data/developer.dart';

class User {
  final int id;
  final String username;
  final String email;
  final String password;
  final Developer developer;
  final Company company;

  User(
      {required this.id,
      required this.username,
      required this.email,
      required this.password,
      required this.developer,
      required this.company});
}
