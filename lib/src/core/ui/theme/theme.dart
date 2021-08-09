import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part './colors.dart';
part './text_styles.dart';

enum ThemeType { light, dark }

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData.light().copyWith(
      brightness: Brightness.light,
      primaryColor: KColors.primary,
      primaryColorLight: KColors.primaryLightColor,
      primaryColorDark: KColors.primaryDarkColor,
      buttonColor: KColors.primary,
      textTheme: _textTheme(context),
      elevatedButtonTheme: _elevatedButtonTheme(context),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith();
  }

  static ElevatedButtonThemeData _elevatedButtonTheme(BuildContext context) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => states.contains(MaterialState.disabled)
              ? KColors.blueGray[300]!
              : KColors.primary,
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => states.contains(MaterialState.disabled)
              ? KColors.blueGray
              : KColors.white,
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyles.textBase(context)
              .copyWith(
                fontWeight: FontWeight.w600,
              )
              .apply(
                fontFamily: 'Plus Jakarta Sans',
              ),
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          const Size(double.infinity, 52),
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.all(12),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        elevation: MaterialStateProperty.all<double>(0),
      ),
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
      subtitle1: TextStyles.textLg(context),
      subtitle2: TextStyles.textLg(context),
      bodyText1: TextStyles.textBase(context),
      bodyText2: TextStyles.textSm(context),
      caption: TextStyles.textXs(context),
    ).apply(
      fontFamily: 'Plus Jakarta Sans',
    );
  }
}
