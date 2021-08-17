import 'package:flutter/material.dart';
import 'src/app/app.dart';
import 'package:resume_room/src/core/injection/injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.configureDependencies();

  runApp(const App());
}
