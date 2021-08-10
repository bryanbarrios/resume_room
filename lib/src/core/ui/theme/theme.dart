import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part './colors.dart';
part './text_styles.dart';
part './widgets/widgets_light_theme.dart';
part './widgets/widgets_dark_theme.dart';

enum ThemeType { light, dark }

class AppTheme {
  const AppTheme._();

  static ThemeData _lightTheme(BuildContext context) {
    return ThemeData.light().copyWith(
      brightness: Brightness.light,
      primaryColor: KColors.lightThemePrimaryColor,
      primaryColorLight: KColors.lightThemePrimaryLightColor,
      primaryColorDark: KColors.lightThemePrimaryDarkColor,
      accentColor: KColors.lightThemeAccentColor,
      backgroundColor: KColors.lightThemeBackgroundColor,
      disabledColor: KColors.blueGray[300],
      buttonColor: KColors.lightThemePrimaryColor,
      textTheme: _textTheme(context).apply(
        bodyColor: KColors.blueGray[600],
        displayColor: KColors.blueGray[600],
      ),
      elevatedButtonTheme: WidgetsLightThemes.elevatedButtonThemeData(context),
      outlinedButtonTheme: WidgetsLightThemes.outlinedButtonThemeData(context),
      textButtonTheme: WidgetsLightThemes.textButtonThemeData(context),
      inputDecorationTheme:
          WidgetsLightThemes.inputDecorationThemeData(context),
      textSelectionTheme: WidgetsLightThemes.textSelectionThemeData(context),
      appBarTheme: WidgetsLightThemes.appBarThemeData(context),
    );
  }

  static ThemeData _darkTheme(BuildContext context) {
    return ThemeData.dark().copyWith(
      brightness: Brightness.dark,
      primaryColor: KColors.darkThemePrimaryColor,
      primaryColorLight: KColors.darkThemePrimaryLightColor,
      primaryColorDark: KColors.darkThemePrimaryDarkColor,
      accentColor: KColors.darkThemeAccentColor,
      backgroundColor: KColors.darkThemeBackgroundColor,
      disabledColor: KColors.blueGray[300],
      buttonColor: KColors.lightThemePrimaryColor,
      textTheme: _textTheme(context).apply(
        bodyColor: KColors.blueGray[50],
        displayColor: KColors.blueGray[50],
      ),
      elevatedButtonTheme: WidgetsDarkThemes.elevatedButtonThemeData(context),
      outlinedButtonTheme: WidgetsDarkThemes.outlinedButtonThemeData(context),
      textButtonTheme: WidgetsDarkThemes.textButtonThemeData(context),
      inputDecorationTheme: WidgetsDarkThemes.inputDecorationThemeData(context),
      textSelectionTheme: WidgetsDarkThemes.textSelectionThemeData(context),
      appBarTheme: WidgetsDarkThemes.appBarThemeData(context),
    );
  }

  static TextTheme _textTheme(BuildContext context) {
    return TextTheme(
      headline1: TextStyles.text6xl(context),
      headline2: TextStyles.text5xl(context),
      headline3: TextStyles.text4xl(context),
      headline4: TextStyles.text3xl(context),
      headline5: TextStyles.text2xl(context),
      headline6: TextStyles.textXl(context),
      subtitle1: TextStyles.textBase(context),
      subtitle2: TextStyles.textBase(context),
      bodyText1: TextStyles.textBase(context),
      bodyText2: TextStyles.textSm(context),
      caption: TextStyles.textXs(context),
    );
  }

  static ThemeData getThemeFromKey(ThemeType themeKey, BuildContext context) {
    switch (themeKey) {
      case ThemeType.light:
        return _lightTheme(context);
      case ThemeType.dark:
        return _darkTheme(context);
      default:
        return _lightTheme(context);
    }
  }
}
