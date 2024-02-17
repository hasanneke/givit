import 'package:flutter/material.dart';

class LoginPageTextField extends StatelessWidget {
  final bool obsucuretext;
  final String labeltext;
  final Widget? prefixIcon;
  const LoginPageTextField({
    super.key,
    this.obsucuretext = false,
    required this.labeltext,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsucuretext,
      decoration: InputDecoration(
        labelText: labeltext,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
