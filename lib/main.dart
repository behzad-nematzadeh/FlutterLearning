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
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
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
