import 'package:flutter/material.dart';
import 'package:resume_room/src/core/ui/theme/theme.dart';
import 'package:resume_room/src/core/ui/widgets/widgets.dart' show Base;
import 'package:resume_room/src/core/ui/theme/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      body: Center(
        child: Text(
          "Resume Room App",
          style: Theme.of(context).textTheme.bodyText1?.bold.copyWith(
                color: KColors.blueGray[700],
              ),
        ),
      ),
    );
  }
}
