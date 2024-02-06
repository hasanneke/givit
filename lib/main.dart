import 'package:flutter/material.dart';
import 'package:givit/features/login/view/login_view.dart';
import 'package:givit/shared/navigation/app_router.dart';
import 'package:givit/shared/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: appRouter.routeInformationParser,
      routerDelegate: appRouter.routerDelegate,
      routeInformationProvider: appRouter.routeInformationProvider,
      theme: AppTheme().lightTheme,
    );
  }
}
