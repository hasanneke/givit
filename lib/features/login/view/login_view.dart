import 'package:flutter/material.dart';
import 'package:givit/features/login/controller/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with LoginViewMixin {
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
