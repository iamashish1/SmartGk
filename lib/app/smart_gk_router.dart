import 'package:auto_route/auto_route.dart';
import 'package:smartgk/modules/auth/screens/login_screen.dart';

import '../modules/auth/screens/sign_up_screen.dart';
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
  ],
)
class $SmartGKRouter {}
