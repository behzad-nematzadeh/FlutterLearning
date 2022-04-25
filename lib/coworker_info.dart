import 'package:flutter/material.dart';
import 'package:flutter_learning/coworker.dart';

class CoworkerInfo extends StatelessWidget {
  const CoworkerInfo({Key? key}) : super(key: key);

  static const routeName = '/coworkerInfo';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Coworker;

    return Theme(
      data: Theme.of(context).copyWith(
        appBarTheme: const AppBarTheme(color: Colors.blue),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('CoworkerInfo'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(args.name),
              Text(args.family),
            ],
          ),
        ),
      ),
    );
  }
}
