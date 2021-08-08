import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume Room',
      theme: ThemeData(
        fontFamily: 'Plus Jakarta Sans',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Resume Room'),
        ),
      ),
    );
  }
}
