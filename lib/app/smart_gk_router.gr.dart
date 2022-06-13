// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i23;
import 'package:flutter/material.dart' as _i24;
import 'package:flutter/src/widgets/framework.dart' as _i25;

import '../modules/auth/screens/login_screen.dart' as _i2;
import '../modules/auth/screens/sign_up_screen.dart' as _i3;
import '../modules/bottom_navigation/bottom_nav.dart' as _i22;
import '../modules/category_and_courses/screens/books/book_detail_screen.dart'
    as _i17;
import '../modules/category_and_courses/screens/books/books_list_screen.dart'
    as _i16;
import '../modules/category_and_courses/screens/books/delivery_info_screen.dart'
    as _i18;
import '../modules/category_and_courses/screens/category_list_screen.dart'
    as _i5;
import '../modules/category_and_courses/screens/category_screen.dart' as _i6;
import '../modules/category_and_courses/screens/course_screen.dart' as _i7;
import '../modules/category_and_courses/screens/exam/exam_instruction_screen.dart'
    as _i13;
import '../modules/category_and_courses/screens/exam/exam_screen.dart' as _i12;
import '../modules/category_and_courses/screens/exam/start_test.dart' as _i14;
import '../modules/category_and_courses/screens/forums/forums_screen.dart'
    as _i15;
import '../modules/category_and_courses/screens/live_class.dart' as _i8;
import '../modules/category_and_courses/screens/notes_screen.dart' as _i9;
import '../modules/category_and_courses/screens/video_playing_screen.dart'
    as _i11;
import '../modules/category_and_courses/screens/video_screen.dart' as _i10;
import '../modules/main/screens/home_screen.dart' as _i1;
import '../modules/notification/screens/notification_screen.dart' as _i4;
import '../modules/profile/screens/profile_screen.dart' as _i19;
import '../modules/profile/screens/purchased_course_screen.dart' as _i20;
import '../modules/profile/screens/settings_screen.dart' as _i21;

class SmartGKRouter extends _i23.RootStackRouter {
  SmartGKRouter([_i24.GlobalKey<_i24.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i23.PageFactory> pagesMap = {
    HomeScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    LoginScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginScreen());
    },
    SignUpScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUpScreen());
    },
    NotificationScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.NotificationScreen());
    },
    CategoryListScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.CategoryListScreen());
    },
    CategoryScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.CategoryScreen());
    },
    CourseScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CourseScreen());
    },
    LiveClass.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.LiveClass());
    },
    NotesScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.NotesScreen());
    },
    VideoScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.VideoScreen());
    },
    VideoPlayingScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.VideoPlayingScreen());
    },
    ExamScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.ExamScreen());
    },
    ExamInstructionScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.ExamInstructionScreen());
    },
    StartTest.name: (routeData) {
      final args =
          routeData.argsAs<StartTestArgs>(orElse: () => const StartTestArgs());
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i14.StartTest(key: args.key, color: args.color));
    },
    ForumsScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.ForumsScreen());
    },
    BooksListScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.BooksListScreen());
    },
    BookDetailScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.BookDetailScreen());
    },
    DeliveryInfoScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.DeliveryInfoScreen());
    },
    ProfileScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.ProfileScreen());
    },
    PurchasedCourseScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.PurchasedCourseScreen());
    },
    SettingsScreen.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.SettingsScreen());
    },
    BottomNav.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.BottomNav());
    }
  };

  @override
  List<_i23.RouteConfig> get routes => [
        _i23.RouteConfig(HomeScreen.name, path: 'home'),
        _i23.RouteConfig(LoginScreen.name, path: '/'),
        _i23.RouteConfig(SignUpScreen.name, path: '/sign-up-screen'),
        _i23.RouteConfig(NotificationScreen.name, path: '/notification-screen'),
        _i23.RouteConfig(CategoryListScreen.name,
            path: '/category-list-screen'),
        _i23.RouteConfig(CategoryScreen.name, path: '/category-screen'),
        _i23.RouteConfig(CourseScreen.name, path: '/course-screen'),
        _i23.RouteConfig(LiveClass.name, path: '/live-class'),
        _i23.RouteConfig(NotesScreen.name, path: '/notes-screen'),
        _i23.RouteConfig(VideoScreen.name, path: '/video-screen'),
        _i23.RouteConfig(VideoPlayingScreen.name,
            path: '/video-playing-screen'),
        _i23.RouteConfig(ExamScreen.name, path: '/exam-screen'),
        _i23.RouteConfig(ExamInstructionScreen.name,
            path: '/exam-instruction-screen'),
        _i23.RouteConfig(StartTest.name, path: '/start-test'),
        _i23.RouteConfig(ForumsScreen.name, path: '/forums-screen'),
        _i23.RouteConfig(BooksListScreen.name, path: '/books-list-screen'),
        _i23.RouteConfig(BookDetailScreen.name, path: '/book-detail-screen'),
        _i23.RouteConfig(DeliveryInfoScreen.name,
            path: '/delivery-info-screen'),
        _i23.RouteConfig(ProfileScreen.name, path: '/profile-screen'),
        _i23.RouteConfig(PurchasedCourseScreen.name,
            path: '/purchased-course-screen'),
        _i23.RouteConfig(SettingsScreen.name, path: '/settings-screen'),
        _i23.RouteConfig(BottomNav.name, path: '/bottom-nav')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreen extends _i23.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: 'home');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreen extends _i23.PageRouteInfo<void> {
  const LoginScreen() : super(LoginScreen.name, path: '/');

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i3.SignUpScreen]
class SignUpScreen extends _i23.PageRouteInfo<void> {
  const SignUpScreen() : super(SignUpScreen.name, path: '/sign-up-screen');

  static const String name = 'SignUpScreen';
}

/// generated route for
/// [_i4.NotificationScreen]
class NotificationScreen extends _i23.PageRouteInfo<void> {
  const NotificationScreen()
      : super(NotificationScreen.name, path: '/notification-screen');

  static const String name = 'NotificationScreen';
}

/// generated route for
/// [_i5.CategoryListScreen]
class CategoryListScreen extends _i23.PageRouteInfo<void> {
  const CategoryListScreen()
      : super(CategoryListScreen.name, path: '/category-list-screen');

  static const String name = 'CategoryListScreen';
}

/// generated route for
/// [_i6.CategoryScreen]
class CategoryScreen extends _i23.PageRouteInfo<void> {
  const CategoryScreen() : super(CategoryScreen.name, path: '/category-screen');

  static const String name = 'CategoryScreen';
}

/// generated route for
/// [_i7.CourseScreen]
class CourseScreen extends _i23.PageRouteInfo<void> {
  const CourseScreen() : super(CourseScreen.name, path: '/course-screen');

  static const String name = 'CourseScreen';
}

/// generated route for
/// [_i8.LiveClass]
class LiveClass extends _i23.PageRouteInfo<void> {
  const LiveClass() : super(LiveClass.name, path: '/live-class');

  static const String name = 'LiveClass';
}

/// generated route for
/// [_i9.NotesScreen]
class NotesScreen extends _i23.PageRouteInfo<void> {
  const NotesScreen() : super(NotesScreen.name, path: '/notes-screen');

  static const String name = 'NotesScreen';
}

/// generated route for
/// [_i10.VideoScreen]
class VideoScreen extends _i23.PageRouteInfo<void> {
  const VideoScreen() : super(VideoScreen.name, path: '/video-screen');

  static const String name = 'VideoScreen';
}

/// generated route for
/// [_i11.VideoPlayingScreen]
class VideoPlayingScreen extends _i23.PageRouteInfo<void> {
  const VideoPlayingScreen()
      : super(VideoPlayingScreen.name, path: '/video-playing-screen');

  static const String name = 'VideoPlayingScreen';
}

/// generated route for
/// [_i12.ExamScreen]
class ExamScreen extends _i23.PageRouteInfo<void> {
  const ExamScreen() : super(ExamScreen.name, path: '/exam-screen');

  static const String name = 'ExamScreen';
}

/// generated route for
/// [_i13.ExamInstructionScreen]
class ExamInstructionScreen extends _i23.PageRouteInfo<void> {
  const ExamInstructionScreen()
      : super(ExamInstructionScreen.name, path: '/exam-instruction-screen');

  static const String name = 'ExamInstructionScreen';
}

/// generated route for
/// [_i14.StartTest]
class StartTest extends _i23.PageRouteInfo<StartTestArgs> {
  StartTest({_i25.Key? key, _i24.Color? color})
      : super(StartTest.name,
            path: '/start-test', args: StartTestArgs(key: key, color: color));

  static const String name = 'StartTest';
}

class StartTestArgs {
  const StartTestArgs({this.key, this.color});

  final _i25.Key? key;

  final _i24.Color? color;

  @override
  String toString() {
    return 'StartTestArgs{key: $key, color: $color}';
  }
}

/// generated route for
/// [_i15.ForumsScreen]
class ForumsScreen extends _i23.PageRouteInfo<void> {
  const ForumsScreen() : super(ForumsScreen.name, path: '/forums-screen');

  static const String name = 'ForumsScreen';
}

/// generated route for
/// [_i16.BooksListScreen]
class BooksListScreen extends _i23.PageRouteInfo<void> {
  const BooksListScreen()
      : super(BooksListScreen.name, path: '/books-list-screen');

  static const String name = 'BooksListScreen';
}

/// generated route for
/// [_i17.BookDetailScreen]
class BookDetailScreen extends _i23.PageRouteInfo<void> {
  const BookDetailScreen()
      : super(BookDetailScreen.name, path: '/book-detail-screen');

  static const String name = 'BookDetailScreen';
}

/// generated route for
/// [_i18.DeliveryInfoScreen]
class DeliveryInfoScreen extends _i23.PageRouteInfo<void> {
  const DeliveryInfoScreen()
      : super(DeliveryInfoScreen.name, path: '/delivery-info-screen');

  static const String name = 'DeliveryInfoScreen';
}

/// generated route for
/// [_i19.ProfileScreen]
class ProfileScreen extends _i23.PageRouteInfo<void> {
  const ProfileScreen() : super(ProfileScreen.name, path: '/profile-screen');

  static const String name = 'ProfileScreen';
}

/// generated route for
/// [_i20.PurchasedCourseScreen]
class PurchasedCourseScreen extends _i23.PageRouteInfo<void> {
  const PurchasedCourseScreen()
      : super(PurchasedCourseScreen.name, path: '/purchased-course-screen');

  static const String name = 'PurchasedCourseScreen';
}

/// generated route for
/// [_i21.SettingsScreen]
class SettingsScreen extends _i23.PageRouteInfo<void> {
  const SettingsScreen() : super(SettingsScreen.name, path: '/settings-screen');

  static const String name = 'SettingsScreen';
}

/// generated route for
/// [_i22.BottomNav]
class BottomNav extends _i23.PageRouteInfo<void> {
  const BottomNav() : super(BottomNav.name, path: '/bottom-nav');

  static const String name = 'BottomNav';
}
