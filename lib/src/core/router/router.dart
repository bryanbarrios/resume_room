import 'package:auto_route/auto_route.dart';
import 'package:resume_room/src/features/landing/view/landing_page.dart';

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
  ],
)
class $AppRouter {}
