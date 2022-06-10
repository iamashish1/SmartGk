// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../modules/auth/screens/login_screen.dart' as _i2;
import '../modules/auth/screens/sign_up_screen.dart' as _i3;
import '../modules/category_and_courses/screens/category_list_screen.dart'
    as _i5;
import '../modules/category_and_courses/screens/category_screen.dart' as _i6;
import '../modules/category_and_courses/screens/course_screen.dart' as _i7;
import '../modules/category_and_courses/screens/exam_screen.dart' as _i12;
import '../modules/category_and_courses/screens/live_class.dart' as _i8;
import '../modules/category_and_courses/screens/notes_screen.dart' as _i9;
import '../modules/category_and_courses/screens/video_playing_screen.dart'
    as _i11;
import '../modules/category_and_courses/screens/video_screen.dart' as _i10;
import '../modules/main/screens/home_screen.dart' as _i1;
import '../modules/notification/screens/notification_screen.dart' as _i4;

class SmartGKRouter extends _i13.RootStackRouter {
  SmartGKRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    HomeScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    LoginScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginScreen());
    },
    SignUpScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUpScreen());
    },
    NotificationScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.NotificationScreen());
    },
    CategoryListScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.CategoryListScreen());
    },
    CategoryScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.CategoryScreen());
    },
    CourseScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CourseScreen());
    },
    LiveClass.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.LiveClass());
    },
    NotesScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.NotesScreen());
    },
    VideoScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.VideoScreen());
    },
    VideoPlayingScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.VideoPlayingScreen());
    },
    ExamScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.ExamScreen());
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(HomeScreen.name, path: 'home'),
        _i13.RouteConfig(LoginScreen.name, path: '/'),
        _i13.RouteConfig(SignUpScreen.name, path: '/sign-up-screen'),
        _i13.RouteConfig(NotificationScreen.name, path: '/notification-screen'),
        _i13.RouteConfig(CategoryListScreen.name,
            path: '/category-list-screen'),
        _i13.RouteConfig(CategoryScreen.name, path: '/category-screen'),
        _i13.RouteConfig(CourseScreen.name, path: '/course-screen'),
        _i13.RouteConfig(LiveClass.name, path: '/live-class'),
        _i13.RouteConfig(NotesScreen.name, path: '/notes-screen'),
        _i13.RouteConfig(VideoScreen.name, path: '/video-screen'),
        _i13.RouteConfig(VideoPlayingScreen.name,
            path: '/video-playing-screen'),
        _i13.RouteConfig(ExamScreen.name, path: '/exam-screen')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreen extends _i13.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: 'home');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreen extends _i13.PageRouteInfo<void> {
  const LoginScreen() : super(LoginScreen.name, path: '/');

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i3.SignUpScreen]
class SignUpScreen extends _i13.PageRouteInfo<void> {
  const SignUpScreen() : super(SignUpScreen.name, path: '/sign-up-screen');

  static const String name = 'SignUpScreen';
}

/// generated route for
/// [_i4.NotificationScreen]
class NotificationScreen extends _i13.PageRouteInfo<void> {
  const NotificationScreen()
      : super(NotificationScreen.name, path: '/notification-screen');

  static const String name = 'NotificationScreen';
}

/// generated route for
/// [_i5.CategoryListScreen]
class CategoryListScreen extends _i13.PageRouteInfo<void> {
  const CategoryListScreen()
      : super(CategoryListScreen.name, path: '/category-list-screen');

  static const String name = 'CategoryListScreen';
}

/// generated route for
/// [_i6.CategoryScreen]
class CategoryScreen extends _i13.PageRouteInfo<void> {
  const CategoryScreen() : super(CategoryScreen.name, path: '/category-screen');

  static const String name = 'CategoryScreen';
}

/// generated route for
/// [_i7.CourseScreen]
class CourseScreen extends _i13.PageRouteInfo<void> {
  const CourseScreen() : super(CourseScreen.name, path: '/course-screen');

  static const String name = 'CourseScreen';
}

/// generated route for
/// [_i8.LiveClass]
class LiveClass extends _i13.PageRouteInfo<void> {
  const LiveClass() : super(LiveClass.name, path: '/live-class');

  static const String name = 'LiveClass';
}

/// generated route for
/// [_i9.NotesScreen]
class NotesScreen extends _i13.PageRouteInfo<void> {
  const NotesScreen() : super(NotesScreen.name, path: '/notes-screen');

  static const String name = 'NotesScreen';
}

/// generated route for
/// [_i10.VideoScreen]
class VideoScreen extends _i13.PageRouteInfo<void> {
  const VideoScreen() : super(VideoScreen.name, path: '/video-screen');

  static const String name = 'VideoScreen';
}

/// generated route for
/// [_i11.VideoPlayingScreen]
class VideoPlayingScreen extends _i13.PageRouteInfo<void> {
  const VideoPlayingScreen()
      : super(VideoPlayingScreen.name, path: '/video-playing-screen');

  static const String name = 'VideoPlayingScreen';
}

/// generated route for
/// [_i12.ExamScreen]
class ExamScreen extends _i13.PageRouteInfo<void> {
  const ExamScreen() : super(ExamScreen.name, path: '/exam-screen');

  static const String name = 'ExamScreen';
}
