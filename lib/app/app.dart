import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume Room',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Resume Room'),
        ),
      ),
    );
  }
}
