import 'package:flutter/material.dart';
import 'package:givit/features/login/view/widget/forgot_password_view.dart';
import 'package:givit/shared/widget/login_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        LoginPageTextField(
          labeltext: 'Email',
          prefixIcon: Icon(
            Icons.mail,
          ),
        ),
        LoginPageTextField(
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
