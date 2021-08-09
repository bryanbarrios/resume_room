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
            TextButton(
              onPressed: () => "pressed",
              child: const Text("Enabled Button"),
            ),
            const TextButton(
              onPressed: null,
              child: Text("Disabled Button"),
            ),
            SizedBox(
              width: double.infinity,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration(
                  labelText: "Enabled Input",
                  hintText: "Enter a text",
                  helperText: "Helper text",
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextFormField(
                autofocus: false,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Obscure Input",
                  hintText: "Enter a text",
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration(
                  labelText: "Input with errors",
                  hintText: "Enter a text",
                  errorText: "Input errors",
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextFormField(
                autofocus: false,
                enabled: false,
                decoration: const InputDecoration(
                  labelText: "Disabled Input",
                  hintText: "Enter a text",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
