import 'package:flutter/material.dart';
import 'package:givit/shared/widget/login_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: LoginPageTextField(
            labeltext: 'Email',
            prefixIcon: Icon(
              Icons.mail,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: LoginPageTextField(
            labeltext: 'Password',
            obsucuretext: true,
            prefixIcon: Icon(
              Icons.key,
            ),
          ),
        ),
      ],
    );
  }
}
