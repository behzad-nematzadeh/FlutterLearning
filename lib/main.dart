import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Learning'),
        centerTitle: true,
        backgroundColor: Colors.red[500],
      ),
      body: const Center(
        child: Icon(
          Icons.access_alarm,
          size: 200,
          color: Colors.lightBlue,
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text(
          'click',
        ),
        backgroundColor: Colors.red[500],
      ),
    );
  }
}
