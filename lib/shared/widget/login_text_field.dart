import 'package:flutter/material.dart';

class LoginPageTextField extends StatelessWidget {
  final bool obsucuretext;
  final String labeltext;
  final Widget? prefixIcon;
  final TextEditingController? textEditingController;
  const LoginPageTextField({
    super.key,
    this.obsucuretext = false,
    this.textEditingController,
    required this.labeltext,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      obscureText: obsucuretext,
      decoration: InputDecoration(
        labelText: labeltext,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
