import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Learning'),
            centerTitle: true,
            backgroundColor: Colors.red[500],
          ),
          body: Center(
            child: Text(
              'hello guys',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.grey[600],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Text(
              'click',
            ),
            backgroundColor: Colors.red[500],
          ),
        ),
      ),
    );
