import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matrimonial/services/shared_preferences_services.dart';
import 'package:matrimonial/widgets/common/matrimonial_appbar.dart';

import '../../cubit/theme_mode_change_cubit.dart';

class MatrimonialScaffold extends StatelessWidget {
  const MatrimonialScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: MatrimonialAppbar(
        onTapHome: () async {
          final themeChangeBool = context.read<SharedPreferencesServices>().getThemeStyleIsDarkMode();
          context.read<ThemeModeChangeCubit>().changeTheme(!themeChangeBool);
        },
      ),
      body: Center(
        child: Text('Matrimonial'),
      ),
    );
  }
}
