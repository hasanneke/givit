import 'package:flutter/material.dart';

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
        InkWell(
          onTap: () {},
          child: Image.asset(
            "assets/images/google.png",
            height: 50,
            width: 50,
          ),
        ),
      ],
    );
  }
}
