import 'package:flutter/material.dart';
import 'package:recruitech_flutter/data/developer.dart';
import 'package:recruitech_flutter/data/http_helper_developer.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  HttpHelper? httpHelper;
  Developer? developer;
  String? id;

  Future initialize() async {
    developer = await httpHelper?.getDevelopers(id);
    setState(() {
      developer = developer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: const Text('Profile'),
        subtitle: Column(
          children: [
            Text(developer!.firstName),
            Text(developer!.lastName),
          ],
        ),
        leading: Column(
          children: [
            Text(developer!.description),
          ],
        ),
      ),
    );
  }
}
