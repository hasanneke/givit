import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  final String title;
  LoginHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/logo.png",
      height: 100,
    );
  }
}
