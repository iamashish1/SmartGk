import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SystemOverlayUtil {
  static void changeSystemBarColor({Color? color}) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: color ?? Colors.white,
    ));
  }

  static void setOrientation({List<DeviceOrientation>? deviceOrientationList}) {
    SystemChrome.setPreferredOrientations(deviceOrientationList ??
        [
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
  }

  static void hideSystemUiOverlay() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  static void showSystemUiOverlay(
      {List<SystemUiOverlay>? systemUiOverlayList}) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: systemUiOverlayList ??
          [
            SystemUiOverlay.bottom,
            SystemUiOverlay.top,
          ],
    );
  }
}
