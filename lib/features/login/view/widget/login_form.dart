import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:givit/features/login/view/widget/forgot_password_view.dart';
import 'package:givit/shared/widget/login_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
  });
  final TextEditingController emailController;
  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        LoginPageTextField(
          textEditingController: emailController,
          labeltext: 'Email',
          prefixIcon: Icon(
            Icons.mail,
          ),
        ),
        Gap(12),
        LoginPageTextField(
          textEditingController: passwordController,
          labeltext: 'Password',
          obsucuretext: true,
          prefixIcon: Icon(
            Icons.key,
          ),
        ),
        ForgotPasswordButton()
      ],
    );
  }
}
