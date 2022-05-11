import 'package:auto_route/auto_route.dart';
import 'package:matrimonial/modules/main/screens/home.dart';

import '../modules/auth/screens/sign_up.dart';
import '../widgets/splash.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: Home, path: 'home'),
    AutoRoute(
      page: Splash,
      initial: true,
    ),
    AutoRoute(page: SignUp),
  ],
)
class $MatrimonialRouter {}
