import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrimonial/app/matrimonial_router.gr.dart';

import '../config/app_themes.dart';
import '../cubit/theme_mode_change_cubit.dart';

class RootApp extends StatelessWidget {
  RootApp({Key? key, required this.mRouter}) : super(key: key);
  final MatrimonialRouter mRouter;
  final botToastBuilder = BotToastInit();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeModeChangeCubit, bool>(
      builder: (context, shouldChange) {
        return ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: shouldChange ? AppTheme.darkTheme : AppTheme.lightTheme,
            routerDelegate: mRouter.delegate(),
            routeInformationParser: mRouter.defaultRouteParser(),
            builder: (context, child) {
              child = botToastBuilder(context, child);
              return child;
            },
          ),
        );
      },
    );
  }
}
