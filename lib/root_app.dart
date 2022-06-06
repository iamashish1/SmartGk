import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/smart_gk_router.gr.dart';
import 'config/app_themes.dart';

class RootApp extends StatelessWidget {
  RootApp({Key? key, required this.mRouter}) : super(key: key);
  final SmartGKRouter mRouter;
  final botToastBuilder = BotToastInit();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        routerDelegate: mRouter.delegate(),
        routeInformationParser: mRouter.defaultRouteParser(),
        builder: (context, child) {
          child = botToastBuilder(context, child);
          return child;
        },
      ),
    );
  }
}
