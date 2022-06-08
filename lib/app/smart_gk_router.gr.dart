// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../modules/auth/screens/login_screen.dart' as _i2;
import '../modules/auth/screens/sign_up_screen.dart' as _i3;
import '../modules/category_and_courses/screens/category_list_screen.dart'
    as _i5;
import '../modules/category_and_courses/screens/category_screen.dart' as _i6;
import '../modules/category_and_courses/screens/course_screen.dart' as _i7;
import '../modules/main/screens/home_screen.dart' as _i1;
import '../modules/notification/screens/notification_screen.dart' as _i4;

class SmartGKRouter extends _i8.RootStackRouter {
  SmartGKRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    LoginScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginScreen());
    },
    SignUpScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUpScreen());
    },
    NotificationScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.NotificationScreen());
    },
    CategoryListScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.CategoryListScreen());
    },
    CategoryScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.CategoryScreen());
    },
    CourseScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CourseScreen());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(HomeScreen.name, path: 'home'),
        _i8.RouteConfig(LoginScreen.name, path: '/'),
        _i8.RouteConfig(SignUpScreen.name, path: '/sign-up-screen'),
        _i8.RouteConfig(NotificationScreen.name, path: '/notification-screen'),
        _i8.RouteConfig(CategoryListScreen.name, path: '/category-list-screen'),
        _i8.RouteConfig(CategoryScreen.name, path: '/category-screen'),
        _i8.RouteConfig(CourseScreen.name, path: '/course-screen')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreen extends _i8.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: 'home');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreen extends _i8.PageRouteInfo<void> {
  const LoginScreen() : super(LoginScreen.name, path: '/');

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i3.SignUpScreen]
class SignUpScreen extends _i8.PageRouteInfo<void> {
  const SignUpScreen() : super(SignUpScreen.name, path: '/sign-up-screen');

  static const String name = 'SignUpScreen';
}

/// generated route for
/// [_i4.NotificationScreen]
class NotificationScreen extends _i8.PageRouteInfo<void> {
  const NotificationScreen()
      : super(NotificationScreen.name, path: '/notification-screen');

  static const String name = 'NotificationScreen';
}

/// generated route for
/// [_i5.CategoryListScreen]
class CategoryListScreen extends _i8.PageRouteInfo<void> {
  const CategoryListScreen()
      : super(CategoryListScreen.name, path: '/category-list-screen');

  static const String name = 'CategoryListScreen';
}

/// generated route for
/// [_i6.CategoryScreen]
class CategoryScreen extends _i8.PageRouteInfo<void> {
  const CategoryScreen() : super(CategoryScreen.name, path: '/category-screen');

  static const String name = 'CategoryScreen';
}

/// generated route for
/// [_i7.CourseScreen]
class CourseScreen extends _i8.PageRouteInfo<void> {
  const CourseScreen() : super(CourseScreen.name, path: '/course-screen');

  static const String name = 'CourseScreen';
}
