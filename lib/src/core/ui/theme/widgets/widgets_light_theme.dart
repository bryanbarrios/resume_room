part of '../theme.dart';

class WidgetsLightThemes {
  const WidgetsLightThemes._();

  static ElevatedButtonThemeData elevatedButtonThemeData(BuildContext context) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => states.contains(MaterialState.disabled)
              ? KColors.blueGray[300]!
              : KColors.lightThemePrimaryColor,
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => states.contains(MaterialState.disabled)
              ? KColors.blueGray
              : KColors.white,
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          const Size(double.infinity, 48),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyles.textBase(context).copyWith(
            fontWeight: FontWeight.w600,
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

  static OutlinedButtonThemeData outlinedButtonThemeData(BuildContext context) {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => states.contains(MaterialState.disabled)
              ? KColors.blueGray
              : KColors.lightThemePrimaryColor,
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          const Size(double.infinity, 48),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyles.textBase(context).copyWith(
            fontWeight: FontWeight.w600,
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
                  color: KColors.lightThemePrimaryColor,
                ),
        ),
        elevation: MaterialStateProperty.all<double>(0),
        overlayColor: MaterialStateProperty.all<Color>(
          KColors.lightThemePrimaryColor.withOpacity(.05),
        ),
      ),
    );
  }

  static TextButtonThemeData textButtonThemeData(BuildContext context) {
    return TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => states.contains(MaterialState.disabled)
              ? KColors.blueGray
              : KColors.lightThemePrimaryColor,
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyles.textBase(context).copyWith(
            fontWeight: FontWeight.w600,
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
          KColors.lightThemePrimaryColor.withOpacity(.05),
        ),
      ),
    );
  }

  static InputDecorationTheme inputDecorationThemeData(BuildContext context) {
    return InputDecorationTheme(
      filled: true,
      fillColor: KColors.blueGray[100],
      contentPadding: const EdgeInsets.all(16),
      labelStyle: TextStyles.textBase(context).copyWith(
        fontWeight: FontWeight.w700,
        color: KColors.blueGray[600],
      ),
      hintStyle: TextStyles.textBase(context).copyWith(
        fontWeight: FontWeight.w400,
        color: KColors.blueGray[400],
      ),
      helperStyle: TextStyles.textXs(context).copyWith(
        fontWeight: FontWeight.w400,
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

  static TextSelectionThemeData textSelectionThemeData(BuildContext context) {
    return TextSelectionThemeData(
      cursorColor: KColors.lightThemePrimaryColor,
      selectionColor: KColors.lightThemePrimaryColor.withOpacity(0.2),
      selectionHandleColor: KColors.lightThemePrimaryColor,
    );
  }

  static AppBarTheme appBarThemeData(BuildContext context) {
    return AppBarTheme(
      backwardsCompatibility: false,
      elevation: 0,
      foregroundColor: KColors.blueGray[700],
      backgroundColor: KColors.lightThemeBackgroundColor,
      titleTextStyle: TextStyles.textBase(context).copyWith(
        fontWeight: FontWeight.w700,
        color: KColors.blueGray[700],
      ),
    );
  }
}
