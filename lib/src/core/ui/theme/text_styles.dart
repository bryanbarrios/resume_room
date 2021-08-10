part of './theme.dart';

class TextStyles {
  const TextStyles._();

  static TextStyle textXs(BuildContext context) => Theme.of(context)
      .textTheme
      .caption!
      .copyWith(fontSize: 12.sp)
      .apply(fontFamily: 'Plus Jakarta Sans');
  static TextStyle textSm(BuildContext context) => Theme.of(context)
      .textTheme
      .bodyText2!
      .copyWith(fontSize: 14.sp)
      .apply(fontFamily: 'Plus Jakarta Sans');
  static TextStyle textBase(BuildContext context) => Theme.of(context)
      .textTheme
      .bodyText1!
      .copyWith(fontSize: 16.sp)
      .apply(fontFamily: 'Plus Jakarta Sans');
  static TextStyle textLg(BuildContext context) => Theme.of(context)
      .textTheme
      .subtitle1!
      .copyWith(fontSize: 18.sp)
      .apply(fontFamily: 'Plus Jakarta Sans');
  static TextStyle textXl(BuildContext context) => Theme.of(context)
      .textTheme
      .headline1!
      .copyWith(fontSize: 20.sp)
      .apply(fontFamily: 'Plus Jakarta Sans');
  static TextStyle text2xl(BuildContext context) => Theme.of(context)
      .textTheme
      .headline2!
      .copyWith(fontSize: 24.sp)
      .apply(fontFamily: 'Plus Jakarta Sans');
  static TextStyle text3xl(BuildContext context) => Theme.of(context)
      .textTheme
      .headline3!
      .copyWith(fontSize: 30.sp)
      .apply(fontFamily: 'Plus Jakarta Sans');
  static TextStyle text4xl(BuildContext context) => Theme.of(context)
      .textTheme
      .headline4!
      .copyWith(fontSize: 36.sp)
      .apply(fontFamily: 'Plus Jakarta Sans');
  static TextStyle text5xl(BuildContext context) => Theme.of(context)
      .textTheme
      .headline5!
      .copyWith(fontSize: 48.sp)
      .apply(fontFamily: 'Plus Jakarta Sans');
  static TextStyle text6xl(BuildContext context) => Theme.of(context)
      .textTheme
      .headline6!
      .copyWith(fontSize: 64.sp)
      .apply(fontFamily: 'Plus Jakarta Sans');
}
