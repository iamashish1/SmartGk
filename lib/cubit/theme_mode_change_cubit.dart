import 'package:flutter_bloc/flutter_bloc.dart';

import '../services/shared_preferences_services.dart';

class ThemeModeChangeCubit extends Cubit<bool> {
  ThemeModeChangeCubit({
    required bool initialValue,
    required this.sharedPreferencesServices,
  }) : super(initialValue);
  final SharedPreferencesServices sharedPreferencesServices;
  void changeTheme(bool value) async {
    await sharedPreferencesServices.setThemeStyleIsDarkMode(value);
    final isDarkMode = sharedPreferencesServices.getThemeStyleIsDarkMode();
    emit(isDarkMode);
  }
}
