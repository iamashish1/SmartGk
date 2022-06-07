import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color _iconColor = Color(0XFF9ED263);
  static Color accentPrimary = const Color(0xff9ED263).withOpacity(0.2);
  static const Color _primaryColor = Color(0XFF9ED263);
  static const Color _primaryWhite = Colors.white;
  static const Color _primaryGrey = Color(0xff8D8D8D);
  static const Color _primaryBlack = Color(0xff1A1A37);
  static Color accentGrey = const Color(0xffFAFAFA);

  static final ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      elevation: 2,
      backgroundColor: _primaryWhite,
      actionsIconTheme: IconThemeData(color: _primaryBlack, size: 21),
      iconTheme: IconThemeData(
        size: 24,
        color: _iconColor,
      ),
    ),
    colorScheme: ColorScheme.light(
        background: _iconColor,
        onSecondary: accentGrey,
        primary: _primaryColor,
        onPrimary: _primaryBlack),
    iconTheme: const IconThemeData(
      color: _iconColor,
    ),
    textTheme: _lightTextTheme,
    dividerTheme: const DividerThemeData(
      color: Colors.black12,
    ),
  );

  static final TextTheme _lightTextTheme = TextTheme(
    headline1: _lightScreenHeading1TextStyle,
    headline2: _lightScreenHeading1TextStyle.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      color: _primaryBlack,
    ),
    bodyText1: _lightScreenHeading1TextStyle.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: _primaryBlack,
    ),
    bodyText2: _lightScreenHeading1TextStyle.copyWith(
      fontSize: 15,
      fontWeight: FontWeight.normal,
      color: _primaryGrey,
    ),
    button: _lightScreenHeading1TextStyle.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: _primaryWhite,
    ),
  );

  static const TextStyle _lightScreenHeading1TextStyle = TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.w600,
    color: _primaryBlack,
    fontFamily: "Montserrat",
  );
}
