import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:resume_room/src/l10n/l10n.dart';
import 'package:resume_room/src/core/ui/theme/theme.dart';
import 'package:resume_room/src/features/landing/landing.dart' show LandingPage;

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: () => const _App(),
    );
  }
}

class _App extends StatelessWidget {
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume Room',
      theme: AppTheme.getThemeFromKey(ThemeType.light, context),
      darkTheme: AppTheme.getThemeFromKey(ThemeType.dark, context),
      debugShowCheckedModeBanner: false,
      home: const LandingPage(),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
