part of './index.dart';

extension FontHelperX on TextStyle {
  TextStyle get black => copyWith(fontWeight: FontWeight.w900);
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
  TextStyle get semibold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);
  TextStyle get light => copyWith(fontWeight: FontWeight.w300);
  TextStyle get extraLight => copyWith(fontWeight: FontWeight.w200);
  TextStyle get thin => copyWith(fontWeight: FontWeight.w100);
}

extension ThemeHelperX on BuildContext {
  ThemeData theme() => Theme.of(this);
  ThemeType themeType() => Theme.of(this).brightness == Brightness.light
      ? ThemeType.light
      : ThemeType.dark;
}
