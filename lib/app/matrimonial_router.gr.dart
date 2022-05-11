// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../modules/auth/screens/sign_up.dart' as _i3;
import '../modules/main/screens/home.dart' as _i1;
import '../widgets/splash.dart' as _i2;

class MatrimonialRouter extends _i4.RootStackRouter {
  MatrimonialRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    Home.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Home());
    },
    Splash.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Splash());
    },
    SignUp.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUp());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(Home.name, path: 'home'),
        _i4.RouteConfig(Splash.name, path: '/'),
        _i4.RouteConfig(SignUp.name, path: '/sign-up')
      ];
}

/// generated route for
/// [_i1.Home]
class Home extends _i4.PageRouteInfo<void> {
  const Home() : super(Home.name, path: 'home');

  static const String name = 'Home';
}

/// generated route for
/// [_i2.Splash]
class Splash extends _i4.PageRouteInfo<void> {
  const Splash() : super(Splash.name, path: '/');

  static const String name = 'Splash';
}

/// generated route for
/// [_i3.SignUp]
class SignUp extends _i4.PageRouteInfo<void> {
  const SignUp() : super(SignUp.name, path: '/sign-up');

  static const String name = 'SignUp';
}
