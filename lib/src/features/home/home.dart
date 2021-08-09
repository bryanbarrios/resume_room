import 'package:flutter/material.dart';
import 'package:resume_room/src/core/ui/theme/theme.dart';
import 'package:resume_room/src/core/ui/widgets/widgets.dart' show Base;
import 'package:resume_room/src/core/ui/theme/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          runSpacing: 16,
          children: [
            Text(
              "Resume Room App",
              style: Theme.of(context).textTheme.bodyText1?.bold.copyWith(
                    color: KColors.blueGray[700],
                  ),
            ),
            ElevatedButton(
              onPressed: () => "pressed",
              child: const Text("Enabled Button"),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text("Disabled Button"),
            )
          ],
        ),
      ),
    );
  }
}
