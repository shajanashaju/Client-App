// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../screens/botton_navigation.dart' as _i4;
import '../screens/login_screen.dart' as _i1;
import '../screens/onboardscreen.dart' as _i3;
import '../screens/signup_screen.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginScreen(),
      );
    },
    SignUpScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignUpScreen(),
      );
    },
    OnBoardScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.OnBoardScreen(),
      );
    },
    BottomNavigationRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.Bottomnavigation(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          LoginScreenRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          SignUpScreenRoute.name,
          path: 'signupscreen',
        ),
        _i5.RouteConfig(
          OnBoardScreenRoute.name,
          path: 'onboardscreen',
        ),
        _i5.RouteConfig(
          BottomNavigationRoute.name,
          path: 'bottomnavigation',
        ),
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginScreenRoute extends _i5.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: '/',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i2.SignUpScreen]
class SignUpScreenRoute extends _i5.PageRouteInfo<void> {
  const SignUpScreenRoute()
      : super(
          SignUpScreenRoute.name,
          path: 'signupscreen',
        );

  static const String name = 'SignUpScreenRoute';
}

/// generated route for
/// [_i3.OnBoardScreen]
class OnBoardScreenRoute extends _i5.PageRouteInfo<void> {
  const OnBoardScreenRoute()
      : super(
          OnBoardScreenRoute.name,
          path: 'onboardscreen',
        );

  static const String name = 'OnBoardScreenRoute';
}

/// generated route for
/// [_i4.Bottomnavigation]
class BottomNavigationRoute extends _i5.PageRouteInfo<void> {
  const BottomNavigationRoute()
      : super(
          BottomNavigationRoute.name,
          path: 'bottomnavigation',
        );

  static const String name = 'BottomNavigationRoute';
}
