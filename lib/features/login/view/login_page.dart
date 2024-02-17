import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:givit/features/login/controller/login_controller.dart';
import 'package:givit/features/login/view/widget/forgot_password_view.dart';
import 'package:givit/shared/widget/login_button.dart';
import 'package:givit/features/login/view/widget/login_form.dart';
import 'package:givit/shared/widget/login_header.dart';
import 'package:givit/features/login/view/widget/sign_other_options.dart';
import 'package:givit/features/login/view/widget/sign_up_button.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with LoginViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginHeader(
                    title: 'Sign In',
                  ),
                  const Gap(20),
                  const LoginForm(),
                  LoginButton(
                    onPressed: () {
                      GoRouter.of(context).go('/home');
                    },
                    text: 'Login',
                  ),
                  const SignInWithOtherMethods(),
                ],
              ),
            ),
            SignUpButton(
              onPressed: () {
                GoRouter.of(context).push('/register');
              },
            ),
          ],
        ),
      ),
    ));
  }
}
