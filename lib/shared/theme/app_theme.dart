import 'package:flutter/material.dart';

class AppTheme {
  ThemeData get lightTheme => ThemeData(
        fontFamily: '',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green[200] ?? Colors.green,
        ),
      );
}
