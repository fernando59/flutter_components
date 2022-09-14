import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData().copyWith(
      primaryColor: primary,
      //appBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));

  static final ThemeData darkTheme = ThemeData().copyWith(
      primaryColor: primary,
      //appBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));
}
