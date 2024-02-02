import 'package:flutter/material.dart';
import 'package:givit/features/login/controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> with LoginViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: login,
            child: const Text(
              'Login',
            ),
          ),
        ],
      ),
    );
  }
}
