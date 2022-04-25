import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/coworker_info.dart';

import 'coworker.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Coworker> coworkers = [
    Coworker('Mohammad', 'Soltani'),
    Coworker('Pejman', 'Sharifi'),
    Coworker('Azam', 'norouzi'),
    Coworker('Mohsen', 'Pejam'),
    Coworker('Behzad', 'Nematzadeh'),
    Coworker('HamidReza', 'Mohammadi'),
    Coworker('Zahra', 'Nematzadeh'),
    Coworker('Soudeh', 'Hojatpanah'),
    Coworker('Soudeh', 'Hashemi'),
    Coworker('Narges', 'Frahani'),
    Coworker('Mohammad', 'Babaei'),
    Coworker('Saeed', 'Dehghani'),
  ];

  Widget coworkerTemplate(coworker) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, CoworkerInfo.routeName,
            arguments: coworker);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                coworker.name,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(height: 8),
              Text(
                coworker.family,
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coworker List'),
        leadingWidth: 0,
        leading: const SizedBox.shrink(),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 80),
        children:
            coworkers.map((coworker) => coworkerTemplate(coworker)).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
