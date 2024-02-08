import 'package:flutter/material.dart';
import 'package:givit/shared/widget/login_button.dart';
import 'package:givit/features/register/controller/register_controller.dart';
import 'package:givit/features/register/view/widget/register_form.dart';
import 'package:givit/shared/widget/login_header.dart';
import 'package:go_router/go_router.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with RegisterViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              LoginHeader(
                title: 'Create Account',
              ),
              const RegisterForm(),
              LoginButton(
                onPressed: () {
                  GoRouter.of(context).go('/home');
                },
                text: 'Register',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
