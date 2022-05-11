import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matrimonial/services/shared_preferences_services.dart';
import 'package:matrimonial/widgets/common/matrimonial_appbar.dart';

import '../../cubit/theme_mode_change_cubit.dart';

class MatrimonialScaffold extends StatelessWidget {
  const MatrimonialScaffold({
    Key? key,
    required this.body,
    this.shouldUseAppBar = true,
    this.backgroundColor,
  }) : super(key: key);
  final Widget body;
  final bool shouldUseAppBar;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.secondary,
      appBar: shouldUseAppBar
          ? MatrimonialAppbar(
              onTapHome: () async {
                final themeChangeBool = context.read<SharedPreferencesServices>().getThemeStyleIsDarkMode();
                context.read<ThemeModeChangeCubit>().changeTheme(!themeChangeBool);
              },
            )
          : null,
      body: body,
    );
  }
}
