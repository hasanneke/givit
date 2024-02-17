import 'package:flutter/material.dart';

class AppTheme {
  ThemeData get lightTheme => ThemeData(
        fontFamily: '',
        inputDecorationTheme: const InputDecorationTheme(
          isDense: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green[200] ?? Colors.green,
        ),
      );
}
