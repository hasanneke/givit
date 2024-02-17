import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignInWithOtherMethods extends StatelessWidget {
  const SignInWithOtherMethods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("-Sign in With-"),
        ),
        SignInButton(
          Buttons.google,
          onPressed: () {},
        ),
        SignInButton(
          Buttons.facebook,
          onPressed: () {},
        ),
        if (Platform.isIOS)
          SignInButton(
            Buttons.apple,
            onPressed: () {},
          ),
      ],
    );
  }
}
