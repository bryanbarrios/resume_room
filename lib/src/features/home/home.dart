import 'package:flutter/material.dart';
import 'package:resume_room/src/core/ui/widgets/widgets.dart' show Base;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            ElevatedButton(
              onPressed: () => "pressed",
              child: const Text("Enabled Button"),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text("Disabled Button"),
            ),
            OutlinedButton(
              onPressed: () => "pressed",
              child: const Text("Enabled Button"),
            ),
            const OutlinedButton(
              onPressed: null,
              child: Text("Disabled Button"),
            ),
          ],
        ),
      ),
    );
  }
}
