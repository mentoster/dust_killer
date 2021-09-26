import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(primary: Colors.redAccent, secondary: Colors.redAccent),
  appBarTheme: const AppBarTheme(backgroundColor: Colors.redAccent),
  scaffoldBackgroundColor: Colors.white,
  splashColor: Colors.red,
  highlightColor: Colors.red,
  fontFamily: 'Georgia',
  iconTheme: const IconThemeData(color: Colors.redAccent),
  textTheme: TextTheme(
    headline1: TextStyle(
        color: Colors.black.withOpacity(0.83),
        fontSize: 24,
        fontWeight: FontWeight.bold),
    button: TextStyle(
      color: Colors.black.withOpacity(0.83),
      fontSize: 18,
    ),
    bodyText1: TextStyle(
      color: Colors.black.withOpacity(0.83),
    ),
    bodyText2: TextStyle(
        color: Colors.black.withOpacity(0.83), fontWeight: FontWeight.bold),
  ),
);
