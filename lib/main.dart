import 'package:flutter/cupertino.dart';
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
      body: Stack(
        //alignment: AlignmentDirectional.topStart,
        children: [
          Image(
            image: const NetworkImage(
                'https://img.freepik.com/free-photo/big-hamburger-with-double-beef-french-fries_252907-8.jpg?w=2000'),
            height: 240,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => {},
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () => {},
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
