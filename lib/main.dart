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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              coworker.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(coworker.family),
          ],
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name :',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Family : ',
                ),
              ),
            ),
            ElevatedButton(onPressed: (){}, child: Text('add person')),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              //scrollDirection: Axis.vertical,
              itemCount: coworkers.length,
              itemBuilder: (ctx, index) => coworkerTemplate(coworkers[index]),
            ),
          ],
        ),
      ),
    );
  }
}
