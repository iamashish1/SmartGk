import 'package:auto_route/auto_route.dart';
import 'package:smartgk/modules/auth/screens/login_screen.dart';
import 'package:smartgk/modules/bottom_navigation/bottom_nav.dart';
import 'package:smartgk/modules/category_and_courses/screens/books/delivery_info_screen.dart';
import 'package:smartgk/modules/category_and_courses/screens/exam/exam_instruction_screen.dart';
import 'package:smartgk/modules/category_and_courses/screens/exam/start_test.dart';
import 'package:smartgk/modules/category_and_courses/screens/live_class.dart';
import 'package:smartgk/modules/category_and_courses/screens/notes_screen.dart';
import 'package:smartgk/modules/category_and_courses/screens/video_calling_screen.dart';
import 'package:smartgk/modules/category_and_courses/screens/video_screen.dart';
import 'package:smartgk/modules/notification/screens/notification_screen.dart';
import 'package:smartgk/modules/profile/screens/profile_screen.dart';
import 'package:smartgk/modules/profile/screens/purchased_course_screen.dart';
import 'package:smartgk/modules/profile/screens/settings_screen.dart';

import '../modules/auth/screens/sign_up_screen.dart';

import '../modules/category_and_courses/screens/books/book_detail_screen.dart';
import '../modules/category_and_courses/screens/books/books_list_screen.dart';
import '../modules/category_and_courses/screens/category_list_screen.dart';
import '../modules/category_and_courses/screens/category_screen.dart';
import '../modules/category_and_courses/screens/course_screen.dart';
import '../modules/category_and_courses/screens/exam/exam_screen.dart';
import '../modules/category_and_courses/screens/forums/forums_screen.dart';
import '../modules/category_and_courses/screens/video_playing_screen.dart';
import '../modules/main/screens/home_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, path: 'home'),
    AutoRoute(
      page: LoginScreen,
      initial: true,
    ),
    AutoRoute(
      page: SignUpScreen,
    ),
    AutoRoute(
      page: NotificationScreen,
    ),
    AutoRoute(page: CategoryListScreen),
    AutoRoute(page: CategoryScreen),
    AutoRoute(
      page: CourseScreen,
    ),
    AutoRoute(
      page: LiveClass,
    ),
    AutoRoute(
      page: NotesScreen,
    ),
    AutoRoute(
      page: VideoScreen,
    ),
    AutoRoute(
      page: VideoPlayingScreen,
    ),
    AutoRoute(
      page: ExamScreen,
    ),
    AutoRoute(
      page: ExamInstructionScreen,
    ),
    AutoRoute(
      page: StartTest,
    ),
    AutoRoute(
      page: ForumsScreen,
    ),
    AutoRoute(
      page: BooksListScreen,
    ),
    AutoRoute(
      page: BookDetailScreen,
    ),
    AutoRoute(
      page: DeliveryInfoScreen,
    ),
    AutoRoute(
      page: ProfileScreen,
    ),
    AutoRoute(
      page: PurchasedCourseScreen,
    ),
    AutoRoute(
      page: SettingsScreen,
    ),
    AutoRoute(
      page: BottomNav,
    ),
    AutoRoute(
      page: VideoCallingScreen,
    ),
  ],
)
class $SmartGKRouter {}
