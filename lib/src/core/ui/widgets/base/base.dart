import 'package:flutter/material.dart';

class Base extends StatelessWidget {
  const Base({Key? key, required this.body, this.appBar}) : super(key: key);

  final Widget body;
  final PreferredSize? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}
