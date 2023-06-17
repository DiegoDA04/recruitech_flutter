import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: const <Widget>[
        Text('List 1'),
        Text('FeaturedJob'),
        Text('Recommend For you'),
      ],
    );
  }
}
