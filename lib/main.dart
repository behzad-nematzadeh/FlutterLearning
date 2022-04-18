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
    Coworker('Azam', 'norouzi'),
  ];

  Widget coworkerTemplate(coworker) {
    return Card(
      margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(coworker.name),
          const SizedBox(height: 8),
          Text(coworker.family),
        ],
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
      body: Column(
        children:
            coworkers.map((coworker) => coworkerTemplate(coworker)).toList(),
      ),
    );
  }
}
