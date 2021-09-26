import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(primary: Colors.redAccent, secondary: Colors.redAccent),
  appBarTheme: const AppBarTheme(backgroundColor: Colors.redAccent),
  scaffoldBackgroundColor: Colors.white,
  splashColor: Colors.red,
  highlightColor: Colors.red,
  fontFamily: 'Georgia',
  textTheme: const TextTheme(
    headline1: TextStyle(
        color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
  ),
);
