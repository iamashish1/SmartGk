import 'package:auto_route/auto_route.dart';
import 'package:smartgk/modules/auth/screens/login.dart';

import '../modules/auth/screens/sign_up.dart';
import '../modules/main/screens/home.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: Home, path: 'home'),
    AutoRoute(
      page: LoginScreen,
      initial: true,
    ),
    AutoRoute(
      page: SignUp,
    ),
  ],
)
class $SmartGKRouter {}
