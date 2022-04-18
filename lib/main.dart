import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Learning'),
          ),
          body: const Center(child: Text('hello guys')),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Text('click'),
          ),
        ),
      ),
    );
