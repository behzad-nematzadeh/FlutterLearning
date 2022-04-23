import 'package:flutter/material.dart';

class UnknownView extends StatelessWidget {
  const UnknownView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        alignment: Alignment.center,
        child: const Text('صفحه مورد نظر یافت نشد!'),
      ),
    );
  }
}
