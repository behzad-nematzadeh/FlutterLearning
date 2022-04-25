import 'package:flutter/material.dart';

import 'coworker.dart';

void main() => runApp(
      const MaterialApp(
        home: CoworkerList(),
      ),
    );

class CoworkerList extends StatefulWidget {
  const CoworkerList({Key? key}) : super(key: key);

  @override
  State<CoworkerList> createState() => _CoworkerListState();
}

class _CoworkerListState extends State<CoworkerList> {
  List<Coworker> coworkers = [
    Coworker('Mohammad', 'Soltani'),
    Coworker('Pejman', 'Sharifi'),
    Coworker('Azam', 'Norouzi'),
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
    return Card(
      margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Wrap(
            spacing: 8,
            children: [
              Text(
                coworker.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(coworker.family),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Coworker List'),
        centerTitle: true,
      ),
      body: SizedBox(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children:
              coworkers.map((coworker) => coworkerTemplate(coworker)).toList(),
        ),
      ),
    );
  }
}
