import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesServices {
  static const CUSTOM_THEME_IS_DARK_MODE = 'CUSTOM_THEME_IS_DARK_MODE';

  final SharedPreferences prefs;
  SharedPreferencesServices(this.prefs);

  setThemeStyleIsDarkMode(bool value) async {
    prefs.setBool(CUSTOM_THEME_IS_DARK_MODE, value);
  }

  bool getThemeStyleIsDarkMode() {
    return prefs.getBool(CUSTOM_THEME_IS_DARK_MODE) ?? false;
  }
}
