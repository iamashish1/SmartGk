import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color _iconColor = Color(0xff8D8D8D);
  static const Color _lightPrimaryColor = Color(0xFFC11724);
  static const Color _lightPrimaryVariantColor = Color(0x77C11724);
  static const Color _lightSecondaryColor = Colors.white;
  static const Color _lightOnSecondaryColor = Color(0xff8D8D8D);
  static const Color _lightOnPrimaryColor = Colors.black;

  static const Color _darkPrimaryColor = Colors.white24;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkSecondaryColor = Colors.white;
  static const Color _darkOnSecondaryColor = Color(0xffffffff);
  static const Color _darkOnPrimaryColor = Color(0xFFC11724);

  static final ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: _lightSecondaryColor,
      iconTheme: IconThemeData(color: _lightOnSecondaryColor),
    ),
    colorScheme: const ColorScheme.light(
      primary: _lightPrimaryColor,
      primaryContainer: _lightPrimaryVariantColor,
      secondary: _lightSecondaryColor,
      onPrimary: _lightOnPrimaryColor,
      onSecondary: _lightOnSecondaryColor,
    ),
    iconTheme: const IconThemeData(
      color: _iconColor,
    ),
    textTheme: _lightTextTheme,
    dividerTheme: const DividerThemeData(color: Colors.black12),
  );

  ///todo : need to check style of the dark theme if needed
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: _darkPrimaryColor,
    appBarTheme: const AppBarTheme(
      color: _darkPrimaryVariantColor,
      iconTheme: IconThemeData(color: _darkOnPrimaryColor),
    ),
    colorScheme: const ColorScheme.dark(
      primary: _darkPrimaryColor,
      primaryContainer: _darkPrimaryVariantColor,
      secondary: _darkSecondaryColor,
      onPrimary: _darkOnPrimaryColor,
      background: Colors.white12,
      onSecondary: _darkOnSecondaryColor,
    ),
    iconTheme: const IconThemeData(
      color: _iconColor,
    ),
    textTheme: _darkTextTheme,
    dividerTheme: const DividerThemeData(color: Colors.black),
  );

  static final TextTheme _lightTextTheme = TextTheme(
    headline1: _lightScreenHeading1TextStyle,
    headline2: _lightScreenHeading1TextStyle.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      color: _lightSecondaryColor,
    ),
    bodyText1: _lightScreenHeading1TextStyle.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: _lightSecondaryColor,
    ),
    bodyText2: _lightScreenHeading1TextStyle.copyWith(
      fontSize: 15,
      fontWeight: FontWeight.normal,
      color: _lightOnSecondaryColor,
    ),
  );

  static final TextTheme _darkTextTheme = TextTheme(
    headline1: _darkScreenHeading1TextStyle,
    headline2: _darkScreenHeading1TextStyle.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      color: _darkSecondaryColor,
    ),
    bodyText1: _lightScreenHeading1TextStyle.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: _darkSecondaryColor,
    ),
    bodyText2: _lightScreenHeading1TextStyle.copyWith(
      fontSize: 15,
      fontWeight: FontWeight.normal,
      color: _darkOnSecondaryColor,
    ),
  );

  static const TextStyle _lightScreenHeading1TextStyle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: _lightOnPrimaryColor,
    fontFamily: "ProximaNova",
  );

  static final TextStyle _darkScreenHeading1TextStyle = _lightScreenHeading1TextStyle.copyWith(color: _darkOnPrimaryColor);
}
