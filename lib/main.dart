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
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8.0),
        margin: const EdgeInsets.all(16.0),
        color: Colors.grey[400],
        child: const Text(
          'hello !!',
          style: TextStyle(backgroundColor: Colors.red),
        ),
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
