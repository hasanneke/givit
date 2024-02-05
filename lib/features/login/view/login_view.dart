import 'package:flutter/material.dart';
import 'package:givit/features/login/controller/login_controller.dart';
import 'package:givit/features/login/view/widget/forgot_password_view.dart';
import 'package:givit/features/login/view/widget/login_button.dart';
import 'package:givit/features/login/view/widget/login_form.dart';
import 'package:givit/features/login/view/widget/login_icon_view.dart';
import 'package:givit/features/login/view/widget/sign_other_options.dart';
import 'package:givit/features/login/view/widget/sign_up_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with LoginViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const LoginIconView(),
          const LoginForm(),
          const ForgotPasswordButton(),
          LoginButton(
            onPressed: () {},
          ),
          const SignInWithOtherMethods(),
          const SignUpButton(),
        ],
      ),
    ));
  }
}
