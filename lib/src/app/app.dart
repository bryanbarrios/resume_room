import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:resume_room/src/core/constants/app_constants.dart';
import 'package:resume_room/src/core/router/router.gr.dart';
import 'package:resume_room/src/l10n/l10n.dart';
import 'package:resume_room/src/core/ui/theme/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: () => _App(),
    );
  }
}

class _App extends StatelessWidget {
  _App({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: kAppName,
      theme: AppTheme.getThemeFromKey(ThemeType.light, context),
      darkTheme: AppTheme.getThemeFromKey(ThemeType.dark, context),
      debugShowCheckedModeBanner: false,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      key: _appRouter.key,
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
