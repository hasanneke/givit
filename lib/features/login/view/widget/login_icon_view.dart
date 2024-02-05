import 'package:flutter/material.dart';

class LoginIconView extends StatelessWidget {
  const LoginIconView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, bottom: 60),
      child: Image.asset(
        "assets/images/logo.png",
        height: 100,
      ),
    );
  }
}
