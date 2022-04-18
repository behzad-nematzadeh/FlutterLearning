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
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('click me!'),
          /*style: ElevatedButton.styleFrom(
            primary: Colors.blue, // background
            onPrimary: Colors.white, // foreground
          ),*/
          /*style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
            padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
            textStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 20),
            ),
          ),*/
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
