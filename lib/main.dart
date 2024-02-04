import 'package:flutter/material.dart';
import 'package:givit/features/home/view/home_page.dart';
import 'package:givit/features/login/view/login_view.dart';
import 'package:givit/shared/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().lightTheme,
      home: const LoginPage(),
    );
  }
}
