import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartgk/utils/system_overlay_util.dart';

import 'app/smart_gk_router.gr.dart';
import 'services/shared_preferences_services.dart';
import 'root_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///todo need to add inside signup
  ///hiding system overlay [navigation bar, status bar] on sign up
  SystemOverlayUtil.hideSystemUiOverlay();

  ///setting the orientation only portrait up and portrait down
  SystemOverlayUtil.setOrientation();

  ///change the status bar color to white [default]
  SystemOverlayUtil.changeSystemBarColor(color: const Color(0XFF9ED263));

  ///initializing the instance of shared preferences
  SharedPreferences prefs = await SharedPreferences.getInstance();

  runApp(MainApp(
    sharedPreferences: prefs,
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key, required this.sharedPreferences}) : super(key: key);
  final SharedPreferences sharedPreferences;
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late SharedPreferencesServices sharedPreferencesServices;

  final _mRouter = SmartGKRouter();

  @override
  void initState() {
    super.initState();
    sharedPreferencesServices =
        SharedPreferencesServices(widget.sharedPreferences);
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<SharedPreferencesServices>(
          create: (_) => sharedPreferencesServices,
        ),
      ],
      child: RootApp(
        mRouter: _mRouter,
      ),
    );
  }
}
