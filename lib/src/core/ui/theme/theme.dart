import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part './colors.dart';
part './text_styles.dart';

enum ThemeType { light, dark }

class AppTheme {
  const AppTheme._();

  static ThemeData lightTheme(BuildContext context) {
    return ThemeData.light().copyWith(
      brightness: Brightness.light,
      primaryColor: KColors.primary,
      primaryColorLight: KColors.primaryLightColor,
      primaryColorDark: KColors.primaryDarkColor,
      accentColor: KColors.accentColor,
      backgroundColor: Colors.white,
      disabledColor: KColors.blueGray[300],
      buttonColor: KColors.primary,
      textTheme: _textTheme(context),
      elevatedButtonTheme: _elevatedButtonThemeData(context),
      outlinedButtonTheme: _outlinedButtonThemeData(context),
      textButtonTheme: _textButtonThemeData(context),
      inputDecorationTheme: _inputDecorationThemeData(context),
      textSelectionTheme: _textSelectionThemeData(context),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith();
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

  static ElevatedButtonThemeData _elevatedButtonThemeData(
      BuildContext context) {
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
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.all(16),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        elevation: MaterialStateProperty.all<double>(0),
      ),
    );
  }

  static OutlinedButtonThemeData _outlinedButtonThemeData(
      BuildContext context) {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => states.contains(MaterialState.disabled)
              ? KColors.blueGray
              : KColors.primary,
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
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.all(16),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        side: MaterialStateProperty.resolveWith<BorderSide>(
          (states) => states.contains(MaterialState.disabled)
              ? BorderSide(
                  width: 1,
                  color: KColors.blueGray[300]!,
                )
              : const BorderSide(
                  width: 1,
                  color: KColors.primary,
                ),
        ),
        elevation: MaterialStateProperty.all<double>(0),
        overlayColor: MaterialStateProperty.all<Color>(
          KColors.primary.withOpacity(.05),
        ),
      ),
    );
  }

  static TextButtonThemeData _textButtonThemeData(BuildContext context) {
    return TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => states.contains(MaterialState.disabled)
              ? KColors.blueGray
              : KColors.primary,
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
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.all(16),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        overlayColor: MaterialStateProperty.all<Color>(
          KColors.primary.withOpacity(.05),
        ),
      ),
    );
  }

  static InputDecorationTheme _inputDecorationThemeData(BuildContext context) {
    return InputDecorationTheme(
      filled: true,
      fillColor: KColors.blueGray[100],
      contentPadding: const EdgeInsets.all(16),
      labelStyle: TextStyles.textBase(context)
          .copyWith(
            fontWeight: FontWeight.w700,
            color: KColors.blueGray[600],
          )
          .apply(
            fontFamily: 'Plus Jakarta Sans',
          ),
      hintStyle: TextStyles.textBase(context)
          .copyWith(
            fontWeight: FontWeight.w400,
          )
          .apply(
            fontFamily: 'Plus Jakarta Sans',
            color: KColors.blueGray[400],
          ),
      helperStyle: TextStyles.textXs(context)
          .copyWith(
            fontWeight: FontWeight.w400,
          )
          .apply(
            fontFamily: 'Plus Jakarta Sans',
            color: KColors.blueGray,
          ),
      errorMaxLines: 2,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(
          width: 0,
          color: Colors.transparent,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(
          width: 0,
          color: Colors.transparent,
        ),
      ),
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(
          width: 0,
          color: Colors.transparent,
        ),
      ),
      disabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(
          width: 3,
          color: KColors.blueGray[300]!,
        ),
      ),
    );
  }

  static TextSelectionThemeData _textSelectionThemeData(BuildContext context) {
    return TextSelectionThemeData(
      cursorColor: KColors.primary,
      selectionColor: KColors.primary.withOpacity(0.2),
      selectionHandleColor: KColors.primary,
    );
  }
}
