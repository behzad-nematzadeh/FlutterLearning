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
        child: Image(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1650109274008-e08fb4999fd4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=706&q=80'),
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
