import 'package:flutter/material.dart';
import 'package:recruitech_flutter/data/http_helper_job.dart';
import 'package:recruitech_flutter/data/job.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HttpHelper? httpHelper;
  Job? job;
  String? id;

  Future initialize() async {
    job = await httpHelper?.getJob(id);
    setState(() {
      job = job;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        const Text('List 1'),
        const Text('FeaturedJob'),
        Column(
          children: [
            Text(job!.title),
          ],
        ),
        const Text('Recommend For you'),
        Column(
          children: [
            Text(job!.title),
          ],
        ),
      ],
    );
  }
}
