import 'package:recruitech_flutter/data/user.dart';

class Developer {
  final int id;
  final String firstNane;
  final String lastNane;
  final String description;
  final User user;

  Developer(
      {required this.id,
      required this.firstNane,
      required this.lastNane,
      required this.description,
      required this.user});
}
