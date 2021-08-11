// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:resume_room/src/features/auth/auth.dart' as _i4;
import 'package:resume_room/src/features/auth/presentation/views/forgot_password_page.dart'
    as _i5;
import 'package:resume_room/src/features/landing/landing.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    LandingPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.LandingPage();
        },
        transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false),
    SignUpPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.SignUpPage();
        },
        transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false),
    SignInPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.SignInPage();
        },
        transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false),
    ForgotPasswordScreenRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.ForgotPasswordScreen();
        },
        transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig('/#redirect',
            path: '/', redirectTo: '/landing', fullMatch: true),
        _i1.RouteConfig(LandingPageRoute.name, path: '/landing'),
        _i1.RouteConfig(SignUpPageRoute.name, path: '/sign-up'),
        _i1.RouteConfig(SignInPageRoute.name, path: '/sign-in'),
        _i1.RouteConfig(ForgotPasswordScreenRoute.name, path: '/reset-password')
      ];
}

class LandingPageRoute extends _i1.PageRouteInfo {
  const LandingPageRoute() : super(name, path: '/landing');

  static const String name = 'LandingPageRoute';
}

class SignUpPageRoute extends _i1.PageRouteInfo {
  const SignUpPageRoute() : super(name, path: '/sign-up');

  static const String name = 'SignUpPageRoute';
}

class SignInPageRoute extends _i1.PageRouteInfo {
  const SignInPageRoute() : super(name, path: '/sign-in');

  static const String name = 'SignInPageRoute';
}

class ForgotPasswordScreenRoute extends _i1.PageRouteInfo {
  const ForgotPasswordScreenRoute() : super(name, path: '/reset-password');

  static const String name = 'ForgotPasswordScreenRoute';
}
