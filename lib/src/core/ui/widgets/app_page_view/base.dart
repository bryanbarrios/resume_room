import 'package:flutter/material.dart';

class Base extends StatelessWidget {
  const Base({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resume Room"),
      ),
      body: body,
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}
