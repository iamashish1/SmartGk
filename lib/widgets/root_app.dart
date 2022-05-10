import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../config/app_themes.dart';
import '../cubit/theme_mode_change_cubit.dart';
import 'common/matrimonial_scaffold.dart';

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeModeChangeCubit, bool>(
      builder: (context, shouldChange) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: shouldChange ? AppTheme.darkTheme : AppTheme.lightTheme,
          home: MatrimonialScaffold(),
        );
      },
    );
  }
}
