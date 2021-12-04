import 'package:flutter/material.dart';

@immutable
class AppTheme {
  final lightTheme = ThemeData(
    brightness: Brightness.light,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.black54, fontSize: 18),
    ),
  );
  // TODO: ダークテーマ
}
