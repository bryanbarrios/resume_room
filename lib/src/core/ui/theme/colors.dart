part of './theme.dart';

class KColors {
  const KColors._();

  static const Color primary = Color(0xfffb8500);
  static const Color primaryDarkColor = Color(0xff023047);
  static const Color primaryLightColor = Color(0xff365973);
  static const Color accentColor = Color(0xffffBF69);
  static const Color backgroundColor = Color(0xffffffff);

  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);

  static const MaterialColor blueGray = MaterialColor(
    0xff64748B,
    <int, Color>{
      50: Color(0xfff8fafc),
      100: Color(0xfff1f5f9),
      200: Color(0xffe2e8f0),
      300: Color(0xffcbd5e1),
      400: Color(0xff94A3B8),
      500: Color(0xff64748B),
      600: Color(0xff475569),
      700: Color(0xff334155),
      800: Color(0xff1E293B),
      900: Color(0xff0F172A),
    },
  );

  static const MaterialColor lightGray = MaterialColor(
    0xff64748B,
    <int, Color>{
      50: Color(0xfffafafa),
      100: Color(0xfff4f4f5),
      200: Color(0xffe4e4e7),
      300: Color(0xffd4d4d8),
      400: Color(0xffa1a1aa),
      500: Color(0xff71717a),
      600: Color(0xff52525b),
      700: Color(0xff3f3f46),
      800: Color(0xff27272a),
      900: Color(0xff18181b),
    },
  );
}
