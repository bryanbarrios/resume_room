import 'package:auto_route/auto_route.dart';
import 'package:resume_room/src/features/auth/auth.dart'
    show SignUpPage, SignInPage;
import 'package:resume_room/src/features/auth/presentation/views/forgot_password_page.dart';
import 'package:resume_room/src/features/landing/landing.dart' show LandingPage;

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page, Screen, Route',
  routes: <AutoRoute>[
    CustomRoute(
      initial: true,
      path: '/landing',
      page: LandingPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      initial: true,
      path: '/sign-up',
      page: SignUpPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      initial: true,
      path: '/sign-in',
      page: SignInPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      initial: true,
      path: '/reset-password',
      page: ForgotPasswordScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),
  ],
)
class $AppRouter {}
